#include "watdefs.h"
#include "date.h"

#define R_EPOCH 2440588L

void to_calendar(int rdates[], int *n, int *calendar, int day[], int month[], int year[]){
  int i;
  long y;
  int m,d;

  for(i=0; i< *n; i++){
    day_to_dmy(rdates[i]+R_EPOCH, &d, &m, &y, (*calendar)-1);
    day[i]=d;
    month[i]=m;
    year[i]=y;
  }

  return;
}

void from_calendar(int rdates[], int *n, int *calendar,
 int day[], int month[], int year[]){
  int i;
  long jd,y;
  for(i=0; i< *n; i++){
    y = year[i];
    jd = dmy_to_day(day[i],month[i],y, (*calendar)-1);
    rdates[i] = jd - R_EPOCH;
  }
  return;
}
