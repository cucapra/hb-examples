int a[4] = {4, 3, 2, 1};

void _p_mergesort() {
    int start, stop;
    int i, m, from, mid, to;

    start = 0;
    stop = 4;

    for (m=1; m<stop-start; m+=m) {
        for (i=start; i<stop; i+=m+m) {
            from = i;
            mid = i+m-1;
            to = i+m+m-1;
            if (to < stop) {
                int temp[4];
                int i, j, k;

                for (i=from; i<=mid; i++) {
                    temp[i] = a[i];
                }

                for (j=mid+1; j<=to; j++) {
                    temp[mid+1+to-j] = a[j];
                }

                i = from;
                j = to;

                for (k=from; k<=to; k++) {
                    int tmp_j = temp[j];
                    int tmp_i = temp[i];
                    if (tmp_j < tmp_i) {
                        a[k] = tmp_j;
                        j--;
                    } else {
                        a[k] = tmp_i;
                        i++;
                    }
                }
            } else {
                int temp[4];
                int i, j, k;

                for (i=from; i<=mid; i++) {
                    temp[i] = a[i];
                }

                for (j=mid+1; j<=stop; j++) {
                    temp[mid+1+stop-j] = a[j];
                }

                i = from;
                j = stop;

                for (k=from; k<=stop; k++) {
                    int tmp_j = temp[j];
                    int tmp_i = temp[i];
                    if (tmp_j < tmp_i) {
                        a[k] = tmp_j;
                        j--;
                    } else {
                        a[k] = tmp_i;
                        i++;
                    }
                }
            }
        }
    }
}

int main(int argc, char const *argv[]) {
    _p_mergesort();
    return 0;
}
