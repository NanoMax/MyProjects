#include<stdio.h>
#include<string.h>
#include<stdlib.h>

const int dec = 100000000;

int max(int a, int b){
    if (a > b){
        return a;
    } else {
        return b;
    }
}
enum bn_code {
    BN_OK, BN_NULL_OBJECT, BN_NO_MEMORY, BN_DIVIDE_BY_ZERO
};
//???? ?????????
struct bn_s{
    int *body;
    int sign;
    int bodysize;
} ;
;
typedef struct bn_s bn;

bn *bn_new(){
    bn *r = malloc(sizeof(bn));
    if (r == NULL)
        return NULL;
    r -> bodysize = 1;
    r -> sign = 0;
    r -> body = malloc(sizeof(int) * r -> bodysize);
    if (r -> body == NULL){
        free(r);
        return NULL;
    }
    r -> body[0] = 0;
    return r;
}
int bn_delete(bn *t){
    if (t == NULL)
        return BN_NULL_OBJECT;
    if (t -> body != NULL){
        free(t -> body);
    }
    free(t);
    return BN_OK;
}
void bn_print(bn const *t){
    if (t -> sign == 0){
        printf("0\n");
        return;
    }
    if (t -> sign == -1){
        printf("-");
    }
    if (t -> bodysize == 1){
        printf("%d\n", t -> body[0]);
        return;
    }
    int i = t -> bodysize - 1;
    while (t -> body[i] == 0 && i > 0){
        i --;
    }
    printf("%d", t -> body[i]);
    for (int j = i - 1; j >= 0; j--){
        printf("%08d", t -> body[j]);
    }
    printf("\n");
    return;
}
bn *bn_init(bn const *orig){
    if (orig == NULL){
        return NULL;
    }
    bn *r = malloc(sizeof(bn));
    if (r == NULL){
        return NULL;
    }
    r -> sign = orig -> sign;
    r -> bodysize = orig -> bodysize;
    r -> body = malloc(sizeof(int) * r -> bodysize);
    if (r -> body == NULL){
        free(r);
        return NULL;
    }
    for (int i = 0; i < r -> bodysize; i++){
        r -> body[i] = orig -> body[i];
    }
    return r;
}
int bn_init_int(bn *t, int init_int){
    if (t == NULL){
        return BN_NULL_OBJECT;
    }
    if (init_int == 0){
        t -> bodysize = 1;
        free(t -> body);
        t -> body = malloc(sizeof(int) * t -> bodysize);
        t -> body[0] = 0;
        t -> sign = 0;
        return BN_OK;
    }
    if (init_int < 0){
        t -> sign = -1;
        init_int *= -1;
    } else {
        t -> sign = 1;
    }
    int init_copy = init_int;
    t -> bodysize = 0;
    while(init_int > 0){
        init_int /= dec;
        t -> bodysize ++;
    }
    free(t -> body);
    t -> body = malloc(sizeof(int) * t -> bodysize);
    if (t -> body == NULL){
        return BN_NO_MEMORY;
    }
    for (int i = 0; i < t -> bodysize; i ++){
        t -> body[i] = init_copy % dec;
        init_copy /= dec;
    }
    return BN_OK;
}
int bn_init_string(bn *t, const char * init_string){
    int len = strlen(init_string) - 1;
    int end = 0, j = 0;
    int l = strlen(init_string);
    if (l == 1 && init_string[0] == '0'){
        t -> sign = 0;
        t -> bodysize = 1;
        free(t -> body);
        t -> body = malloc(sizeof(int) * t -> bodysize);
        t -> body[0] = 0;
        return BN_OK;
    }
    if (l == 2 && init_string[0] == '-' && init_string[1] == '0'){
        t -> sign = 0;
        t -> bodysize = 1;
        free(t -> body);
        t -> body = malloc(sizeof(int) * t -> bodysize);
        t -> body[0] = 0;
        return BN_OK;
    }
    if (init_string[0] == '-'){
        t -> sign = -1;
        l --;
        end = 1;
    } else {
        t -> sign = 1;
    }
    t -> bodysize = (l - 1) / 8 + 1;
    free(t -> body);
    t -> body = malloc(sizeof(int) * t -> bodysize);
    if (t -> body == NULL){
        return BN_NO_MEMORY;
    }
    for (int i = len; i >= end; i-=8){
        int s = 0;
        if (i - 7 >= end){
            s = (init_string[i-7] - '0');
        }
        if (i - 6 >= end){
            s = 10 * s + (init_string[i-6] - '0');
        }
        if (i - 5 >= end){
            s = 10 * s + (init_string[i-5] - '0');
        }
        if (i - 4 >= end){
            s = 10 * s + (init_string[i-4] - '0');
        }
        if (i - 3 >= end){
            s = 10 * s + (init_string[i-3] - '0');
        }
        if (i - 2 >= end){
            s = 10 * s + (init_string[i-2] - '0');
        }
        if (i - 1 >= end){
            s = 10 * s + (init_string[i-1] - '0');
        }
        s = 10 * s + (init_string[i] - '0');
        t -> body[j] = s;
        j ++;
    }
    return BN_OK;
}

int bn_cmp_abs(bn const *left, bn const *right){
    if (left -> sign == 0 && right -> sign == 0)  return 0;
    if (left -> bodysize > right -> bodysize) return 1;

    if (left -> bodysize < right -> bodysize){
        return - 1;
    }
    int l = left -> bodysize - 1;
    while (l >= 0){
        if (left -> body[l] == right -> body[l]){
            l --;
        } else {
            break;
        }
    }
    if (l == -1){
        return 0;
    }
    if (left -> body[l] > right -> body[l]){
        return 1;
    } else {
        return -1;
    }
}

//?????????
int bn_cmp(bn const *left, bn const *right){
    if (left -> sign == 0 && right -> sign == 0)  return 0;
    if (left -> sign > right -> sign) return 1;
    if (left -> sign < right -> sign) return -1;
    if (left -> sign == 1 && left -> sign == -1){
        return 1;
    }
    if (left -> sign == -1 && left -> sign == 1){
        return -1;
    }
    if (left ->sign == 1 && right -> sign == 1){
        return (bn_cmp_abs(left, right));
    }
    return (-bn_cmp_abs(left, right));
}

//l - r
bn *bn_sub(bn const *left, bn const *right){
    if (right -> sign == 0){
        return bn_init(left);
    }
    if (left -> sign == 0){
        bn *ans = bn_init(right);
        ans -> sign = ans -> sign * (-1);
        return ans;
    }
    if (left -> sign != right -> sign){
        bn *ans = malloc(sizeof(bn));
        if (ans == NULL) return NULL;
        int l = max(left -> bodysize, right -> bodysize);
        int s = 0;
        l ++;
        ans -> sign = left -> sign;
        ans -> bodysize = l;
        ans -> body = malloc(sizeof(int) * ans -> bodysize);
        if (ans -> body == NULL){
            free(ans);
            return NULL;
        }
        int ost = 0;
        for (int i = 0; i < ans -> bodysize; i++){
            s = 0;
            if (left -> bodysize > i) s += left -> body[i];
            if (right -> bodysize > i) s += right -> body[i];
            s += ost;
            ans -> body[i] = s % dec;
            ost = s / dec;
        }
        int k = ans -> bodysize - 1;
        while (ans -> body[k] == 0){
            k --;
        }
        k ++;
        ans -> bodysize = k;
        ans -> body = realloc(ans -> body, sizeof(int) * k);
        return ans;
    }
    int k = bn_cmp_abs(left, right);
    if (k == 0) return bn_new();
    if (k == 1){
        bn *h = bn_init(left);
        int ost = 0;
        for (int i = 0; i < h -> bodysize; i++){
            int s = left -> body[i] - ost;
            if (i < right -> bodysize){
                s -= right -> body[i];
            }
            ost = 0;
            if (s < 0){
                ost = 1;
                s += dec;
            }
            h -> body[i] = s;
        }
        int f = h -> bodysize - 1;
        while (h -> body[f] == 0){
            f--;
        }
        f++;
        bn *ans1 = malloc(sizeof(bn));
        ans1 -> sign = h -> sign;
        ans1 -> bodysize = f;
        ans1 -> body = malloc(sizeof(int) * f);
        for (int i = 0; i < f; i++){
            ans1 -> body[i] = h -> body[i];
        }
        bn_delete(h);
        return ans1;
    } else {
        bn *h = bn_init(right);
        h -> sign = -1 * h -> sign;
        int ost = 0;
        for (int i = 0; i < h -> bodysize; i++){
            int s = right -> body[i] - ost;
            if (i < left -> bodysize){
                s -= left -> body[i];
            }
            ost = 0;
            if (s < 0){
                ost = 1;
                s += dec;
            } else ost = 0;
            h -> body[i] = s;
        }
        int f = h -> bodysize - 1;
        while (h -> body[f] == 0){
            f--;
        }
        f++;
        bn *ans = malloc(sizeof(bn));
        ans -> sign = h -> sign;
        ans -> bodysize = f;
        ans -> body = malloc(sizeof(int) * f);
        for (int i = 0; i < f; i++){
            ans -> body[i] = h -> body[i];
        }
        bn_delete(h);
        return ans;
    }
}

//l + r
bn *bn_add(bn const *left, bn const *right){
    if (left -> sign == 0){
        return bn_init(right);
    }
    if (right -> sign == 0){
        return bn_init(left);
    }
    if (left -> sign == right -> sign){
        bn *r = bn_init(right);
        r -> sign = -1 * r -> sign;
        bn *ans = bn_sub(left, r);
        bn_delete(r);
        return ans;
    } else {
        if (right -> sign == -1){
            bn *r = bn_init(right);
            r -> sign = 1;
            bn *ans = bn_sub(left, r);
            bn_delete(r);
            return ans;
        } else {
            bn *l = bn_init(left);
            l -> sign = 1;
            bn *ans = bn_sub(right, l);
            bn_delete(l);
            return ans;
        }
    }
}
//+=
int bn_add_to(bn *t, bn const *right){
    bn *c = bn_add(t, right);
    t -> body = realloc(t -> body, sizeof(int) * c -> bodysize);
    t -> sign = c -> sign;
    t -> bodysize = c -> bodysize;
    for (int i = 0; i < c -> bodysize; i++){
        t -> body[i] = c -> body[i];
    }
    bn_delete(c);
    return BN_OK;
}

//-=
int bn_sub_to(bn *t, bn const *right){
    bn *c = bn_sub(t, right);
    t -> body = realloc(t -> body, sizeof(int) * c -> bodysize);
    t -> sign = c -> sign;
    t -> bodysize = c -> bodysize;
    for (int i = 0; i < c -> bodysize; i++){
        t -> body[i] = c -> body[i];
    }
    bn_delete(c);
    return BN_OK;
}

//l * r
bn *bn_mul(bn const *left, bn const *right){
    if (left -> sign == 0) return bn_init(left);
    if (right ->sign == 0) return bn_init(right);
    long int *c = malloc(sizeof(long int) * (left -> bodysize + right -> bodysize + 1));
    for (int i = 0; i < left -> bodysize + right -> bodysize + 1; i++){
        c[i] = 0;
    }
    for (int i = 0; i < left -> bodysize; i++){
        for (int j = 0; j < right -> bodysize; j++){
            long int cur = (long int)left -> body[i] * right -> body[j] + c[i + j];
            c[i + j] = cur % dec;
            c[i + j + 1] += cur / dec;
        }
    }
    int k = left -> bodysize + right -> bodysize;
    while (c[k] == 0){
        k --;
    }
    bn *ans = malloc(sizeof(bn));
    if (ans == NULL){
        return NULL;
    }
    ans -> sign = left -> sign * right -> sign;
    ans -> bodysize = k + 1;
    ans -> body = malloc(sizeof(int) * ans -> bodysize);
    if (ans -> body == NULL){
        free(ans);
        return NULL;
    }
    for (int i = k; i >= 0; i--){
        ans -> body[i] = (int)c[i];
    }
    free(c);
    return ans;
}
//*=
int bn_mul_to(bn *t, bn const *right){
    bn *n;
    n = bn_mul(t, right);
    t -> bodysize = n -> bodysize;
    t -> body = realloc(t -> body,sizeof(int) * t -> bodysize);
    for (int i = 0; i < t -> bodysize; i++){
        t -> body[i] = n -> body[i];
    }
    t -> sign = n -> sign;
    bn_delete(n);
    return BN_OK;
}
bn* bn_div_same(bn const *left1, bn const *right1){
    if(right1 -> bodysize == 1 && right1 -> body[0] == 1){
        bn *res = bn_init(left1);
        return res;
    }
    if (right1 -> sign == 0){
        return NULL;
    }
    bn *left = bn_init(left1);
    if (left -> sign == -1){
        left -> sign = 1;
    }
    bn *right = bn_init(right1);
    if (right -> sign == -1){
        right -> sign = 1;
    }
    bn *res = malloc(sizeof(bn));
    res -> bodysize = 0;
    res -> sign = 1;
    if (bn_cmp(left, right) == -1){
        bn_delete(left);
        bn_delete(right);
        res -> sign = 0;
        res -> bodysize = 1;
        res -> body = malloc(sizeof(int));
        res -> body[0] = 0;
        return res;
    }
    int r = 29;
    bn **an = malloc(sizeof(bn*) * r);
    an[0] = bn_init(right);
    for (int i = 1; i < r; i++){
        an[i] = bn_add(an[i - 1], an[i - 1]);
    }
    int *ans = malloc(sizeof(int)), p = 0;
    bn *help = malloc(sizeof(bn));
    help -> bodysize = 1;
    help -> sign = 1;
    help -> body = malloc(sizeof(int));
    int t = left -> bodysize - 1;
    help -> body[0] = left -> body[t];
    t--;
    if (t == -1){
        for (int i = 0; i < r; i++){
            bn_delete(an[i]);
        }
        free(an);
        bn_delete(help);
        free(ans);
        res -> sign = 1;
        res -> bodysize = 1;
        res -> body = malloc(sizeof(int));
        res -> body[0] = left -> body[0] / right -> body[0];
        bn_delete(left);
        bn_delete(right);
        return res;
    }
    while (t >= 0){
        if (help -> sign == 0 && left -> body[t] == 0){
            ans = realloc(ans, sizeof(int) * (p + 1));
            ans[p] = 0;
            p ++; t--;
            continue;
        }
        if (help -> sign == 0){
            help -> sign = 1;
            help -> body[0] = left -> body[t];
            t --;
        }
        int u = 0;
        while (bn_cmp(help, right) == -1 && t >= 0){
            help -> body = realloc( help -> body, sizeof(int) * (help -> bodysize + 1));
            help -> bodysize ++;
            for (int i = help -> bodysize - 1; i >= 1; i--){
                help -> body[i] = help -> body[i - 1];
            }
            help -> body[0] = left -> body[t];
            t --;
            u ++;
            if (u >= 2){
                ans = realloc(ans, sizeof(int) * (p + 1));
                ans[p] = 0;
                p ++;
            }
        }
        int sum = 0;
        while (bn_cmp(help, right) >= 0){
            int m = 0;
            int li = 0, ri = r - 1;
            while (li != ri){
                int mid = (li + ri) / 2;
                int sr = bn_cmp(help, an[mid]);
                if (sr == -1){
                    ri = mid;
                } else {
                    li = mid + 1;
                }
            }
            m = li;
            if (bn_cmp(help, an[m]) == -1){
                m --;
            }
            bn_sub_to(help, an[m]);
            sum += 1<<m;
        }
        ans = realloc(ans, sizeof(int) * (p + 1));
        ans[p] = sum;
        p ++;
    }
    for (int i = 0; i < r; i++){
        bn_delete(an[i]);
    }
    free(an);
    res -> bodysize = p;
    res -> body = malloc(sizeof(int) * res -> bodysize);
    for (int i = p - 1; i >= 0; i--){
        res -> body[i] = ans[p - 1 - i];
    }
    if (left -> sign == right -> sign){
        res -> sign = 1;
    }
    bn_delete(left);
    bn_delete(right);
    bn_delete(help);
    free(ans);
    return res;
}
bn *bn_div_dif(bn const *left1, bn const *right1){
    /*if (left1 -> sign == -1){
      bn *res = bn_div_same(left1, right1);
      res -> sign *= -1;
      return res;
    }*/
    bn *res = bn_div_same(left1, right1);
    bn *ed = malloc(sizeof(bn));
    ed -> sign = 1;
    ed -> bodysize = 1;
    ed -> body = malloc(sizeof(int));
    ed -> body[0] = 1;
    bn *check = bn_init(left1);
    bn *c = bn_mul(right1, res);
    bn_add_to(check, c);
    if (check -> sign != 0){
        bn_add_to(res, ed);
    }
    bn_delete(ed);
    bn_delete(check);
    bn_delete(c);
    res -> sign = -1;
    return res;
}
bn *bn_div(bn const *left, bn const *right){
    if (left -> sign == right -> sign || right -> sign ==0 || left -> sign == 0){
        return bn_div_same(left, right);
    }
    return bn_div_dif(left, right);
}
int bn_div_to(bn *t, bn const *right){
    if (right -> sign == 0){
        return BN_NULL_OBJECT;
    }
    bn *c = bn_div(t, right);
    t -> body = realloc(t -> body, sizeof(int) * c -> bodysize);
    t -> sign = c -> sign;
    t -> bodysize = c -> bodysize;
    for (int i = 0; i < c -> bodysize; i++){
        t -> body[i] = c -> body[i];
    }
    bn_delete(c);
    return BN_OK;
}
bn *bn_mod(bn const *left1, bn const *right1){
    bn *n;
    n = bn_div(left1, right1);
    bn_mul_to(n, right1);
    bn_sub_to(n, left1);
    n -> sign *= -1;
    return n;
}
int bn_mod_to(bn * t, bn const *right){
    if (right -> sign == 0){
        return BN_NULL_OBJECT;
    }
    bn *c = bn_mod(t, right);
    t -> body = realloc(t -> body, sizeof(int) * c -> bodysize);
    t -> sign = c -> sign;
    t -> bodysize = c -> bodysize;
    for (int i = 0; i < c -> bodysize; i++){
        t -> body[i] = c -> body[i];
    }
    bn_delete(c);
    return BN_OK;
}
int bn_neg(bn *t){
    if (t == NULL){
        return BN_NULL_OBJECT;
    }
    t -> sign *= -1;
    return BN_OK;
}
int bn_abs(bn *t){
    if (t == NULL){
        return BN_NULL_OBJECT;
    }
    if (t -> sign < 0){
        t -> sign = 1;
    }
    return BN_OK;
}
int bn_sign(bn const *t){
    if (t == NULL){
        return BN_NULL_OBJECT;
    }
    return t -> sign;
}
const char *bn_to_string(bn const *a, int n){
    if (a == NULL){
        return NULL;
    }
    char *ans = malloc(sizeof(char));
    int t = 0, u, s = 1;
    while (t == 0){
        u = 0;
        int r = a -> bodysize - 1;
        while (r >= 0){
            long h = u * (long)dec + (long)a -> body[r];
            a -> body[r] = h / n;
            u = h %n;
            r --;
        }
        int l = 0;
        for (int i = 0; i < a -> bodysize - 1; i++){
            if (a -> body[i] != 0){
                l = 1;
                break;
            }
        }
        if (l == 0){
            if (a -> body[a -> bodysize - 1] == 0){
                t = 1;
            }
        }
        if (u < 10){
            ans[s - 1] = u + '0';
        } else {
            ans[s - 1] = 'A' + u - 10;
        }
        s ++;
        ans = realloc(ans, s * sizeof(char));
    }
    ans[s - 1] = '\0';
    char *anso = malloc(sizeof(char) * (s + 1));
    if (a -> sign >= 0){
        for (int i = 0; i < s - 1; i ++){
            anso[i] = ans[s - 2 - i];
        }
        anso[s - 1] = '\0';
    } else {
        anso[0] = '-';
        for (int i = 0; i < s - 1; i ++){
            anso[1 + i] = ans[s - 2 - i];
        }
        anso[s] = '\0';
    }
    free(ans);
    return anso;
}
int bn_pow_to(bn *t, int n){
    bn *res = bn_new();
    res -> sign = 1;
    res -> bodysize = 1;
    res -> body[0] = 1;
    while (n){
        if (n & 1) {
            bn_mul_to(res, t);
            n--;
        }
        else {
            bn_mul_to(t, t);
            n >>= 1;
        }
    }
    t -> bodysize = res -> bodysize;
    t -> sign = res -> sign;
    t -> body = realloc(t -> body, sizeof(int) * t -> bodysize);
    for (int i = 0; i < t -> bodysize; i++){
        t -> body[i] = res -> body[i];
    }
    bn_delete(res);
    return BN_OK;
}

int bn_root_to(bn * t, int n){
    bn *ans, *sr1 = malloc(sizeof(bn)), *sr2 = malloc(sizeof(bn));
    sr1 -> body = malloc(sizeof(int));
    sr2 -> body = malloc(sizeof(int));
    bn *num = bn_new();
    bn_init_int(num, n);

    bn *num1 = bn_new();
    bn_init_int(num1, n - 1);

    bn *help1 = malloc(sizeof(bn));
    help1 -> sign = t -> sign;
    help1 -> bodysize = t -> bodysize / n + 1;
    help1 -> body = malloc(sizeof(int) * help1 -> bodysize);
    for (int i = 0; i < help1 -> bodysize; i++){
        help1 -> body[help1 -> bodysize - 1 - i] = t -> body[t -> bodysize - 1 - i];
    }
    bn *help2 = bn_init(t);
    bn *help3 = bn_init(help1);
    bn_pow_to(help3, n - 1);
    bn_div_to(help2, help3);
    bn_delete(help3);
    help3 = bn_mul(help1, num1);
    bn_add_to(help2, help3);
    bn_div_to(help2, num);
    int k = 0;
    while (bn_cmp(help1, help2) != 0){
        if (k % 2 == 1){
            help2 -> bodysize = t -> bodysize;
            help2 -> body = realloc(help2 -> body, sizeof(int) * t -> bodysize);
            help2 -> sign = 1;
            for (int i = 0; i < t -> bodysize; i++){
                help2 -> body[i] = t -> body[i];
            }
            bn_delete(help3);
            help3 = bn_init(help1);
            bn_pow_to(help3, n - 1);
            bn_div_to(help2, help3);
            bn_delete(help3);
            help3 = bn_mul(help1, num1);
            bn_add_to(help2, help3);
            bn_div_to(help2, num);
        } else {
            help1 -> bodysize = t -> bodysize;
            help1 -> body = realloc(help1 -> body, sizeof(int) * t -> bodysize);
            help1 -> sign = 1;
            for (int i = 0; i < t -> bodysize; i++){
                help1 -> body[i] = t -> body[i];
            }
            bn_delete(help3);
            help3 = bn_init(help2);
            bn_pow_to(help3, n - 1);
            bn_div_to(help1, help3);
            bn_delete(help3);
            help3 = bn_mul(help2, num1);
            bn_add_to(help1, help3);
            bn_div_to(help1, num);
        }
        sr1 -> sign = help1 -> sign;
        sr1 -> bodysize = help1 -> bodysize;
        sr1 -> body = realloc(sr1 -> body, sizeof(int) * sr1 -> bodysize);
        for (int i = 0; i < sr1 -> bodysize; i++){
            sr1 -> body[i] = help1 -> body[i];
        }
        sr2 -> sign = help2 -> sign;
        sr2 -> bodysize = help2 -> bodysize;
        sr2 -> body = realloc(sr2 -> body, sizeof(int) * sr2 -> bodysize);
        for (int i = 0; i < sr2 -> bodysize; i++){
            sr2 -> body[i] = help2 -> body[i];
        }
        bn_pow_to(sr1, n);
        bn_pow_to(sr2, n);
        int s1 = bn_cmp(sr1, sr2), s2 = bn_cmp(sr1, sr2);
        if ((s1 <= 0 && s2 > 0)){
            k = -1;
            ans = bn_init(help1);
        }
        if (s1 > 0 && s2 <= 0){
            k = -1;
            ans = bn_init(help2);
        }
        k++;
    }
    if (k >= 0){
        if (k - 1 % 2 == 0){
            ans = bn_init(help1);
        } else {
            ans = bn_init(help2);
        }
    }
    t -> body = realloc(t -> body, sizeof(int) * ans -> bodysize);
    t -> bodysize = ans -> bodysize;
    for (int i = 0; i < ans -> bodysize; i++){
        t -> body[i] = ans -> body[i];
    }
    bn_delete(help1);
    bn_delete(help2);
    bn_delete(help3);
    bn_delete(sr1);
    bn_delete(sr2);
    bn_delete(ans);
    bn_delete(num);
    bn_delete(num1);

    return BN_OK;
}

