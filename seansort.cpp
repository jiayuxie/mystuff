#include <iostream>
#include <vector>
#include <cmath>
#include <utility>
using namespace std;

int Partition(vector<double>& vec,int l,int r){
  double P = vec[r];
  int i =l-1;
  for (int j=l;j<=r-1;j++){
    if (vec[j]<=P){
      i++;
      swap(vec[j],vec[i]);
     }
  }
  swap(vec[r],vec[i+1]);
  return i+1;
} 
  


void SeanSort(vector<double>& vec,int l,int r){
  if (r<=l)
     return;
  int size = r-l+1;
  double sum = 0;
  for (int i=l;i<size;i++){
    sum += vec[i];
    }
  double avg = sum / size;
  double curPiv=l;
  double curMin=abs(vec[0]-avg);
  for (int i=l;i<size;i++){
    double resi = abs(vec[i]-avg);
    if (resi < curMin){   
      curPiv = i;
      curMin = resi;
     }
  }
  swap(vec[curPiv],vec[r]);
  int p = Partition(vec,l,r);
  SeanSort(vec,l,p-1);
  SeanSort(vec,p+1,r);
}
  
int main(){
  double num;
  vector<double> V;
  while(cin>>num){
   if (cin.eof())
     break;
   else 
     V.push_back(num);
   }
   int size = V.size();
   SeanSort(V,0,size-1);
   for (int i =0;i <size;i++){
     cout << V[i]<<endl;
   }
}

