extern int printf(const char * restrict, ...);


struct ST {
  int m01;
  int m02:2;
  int * restrict p03;
};

int       * restrict iprFunc() { return 0; }
struct ST *           SpFunc() { return 0; }
struct ST * restrict SprFunc() { return 0; }


void Func() {

     int VarI = 0;

     typedef int *  restrict   typeIPR ;
     typedef int ** restrict   typeIPPR;
     typedef int *  restrict * typeIPRP;
     typeIPR  VarIPR  = 0;
     typeIPPR VarIPPR = 0;
     typeIPRP VarIPRP = 0;

     VarI = *  VarIPR ;
     VarI = ** VarIPPR;
     VarI = ** VarIPRP;

     VarI = * (VarIPR+9) ;
     VarI =    VarIPR[8] ;
     VarI = * (VarIPR++) ;
     VarI = **(VarIPPR+9);
     VarI = *  VarIPPR[8];
     VarI = **(VarIPPR++);
     VarI = *((* VarIPRP)+9);
     VarI =   (* VarIPRP)[8];
     VarI = *((* VarIPRP)++);

     *  VarIPR  = VarI;
     ** VarIPPR = VarI;
     ** VarIPRP = VarI;

     * (VarIPR+9)  = VarI;
        VarIPR[8]  = VarI;
     * (VarIPR++)  = VarI;
     **(VarIPPR+9) = VarI;
     *  VarIPPR[8] = VarI;
     **(VarIPPR++) = VarI;
     *((* VarIPRP)+9) = VarI;
      ( * VarIPRP)[8] = VarI;
     *((* VarIPRP)++) = VarI;

     VarI = (*  VarIPR )++;
     VarI = (** VarIPPR)++;
     VarI = (** VarIPRP)++;
     VarI = (* (VarIPR+9) )++;
     VarI = (   VarIPR[8] )++;
     VarI = (* (VarIPR++) )++;
     VarI = (**(VarIPPR+9))++;
     VarI = (*  VarIPPR[8])++;
     VarI = (**(VarIPPR++))++;
     VarI = (*((* VarIPRP)+9))++;
     VarI = (  (* VarIPRP)[8])++;
     VarI = (*((* VarIPRP)++))++;

     VarI = --(*  VarIPR );
     VarI = --(** VarIPPR);
     VarI = --(** VarIPRP);
     VarI = --(* (VarIPR+9) );
     VarI = --(   VarIPR[8] );
     VarI = --(* (VarIPR++) );
     VarI = --(**(VarIPPR+9));
     VarI = --(*  VarIPPR[8]);
     VarI = --(**(VarIPPR++));
     VarI = --(*((* VarIPRP)+9));
     VarI = --(  (* VarIPRP)[8]);
     VarI = --(*((* VarIPRP)++));

     typedef int * restrict typeIPRA[10];
     typeIPRA VarIPRA = { 0 };

     VarI = * VarIPRA[8];
     VarI = *(VarIPRA[8]+9);
     VarI = *(VarIPRA[8]++);
     * VarIPRA[8] = VarI;
     *(VarIPRA[8]+9) = VarI;
     *(VarIPRA[8]++) = VarI;
     VarI = (* VarIPRA[8])++;
     VarI = (*(VarIPRA[8]+9))++;
     VarI = (*(VarIPRA[8]++))++;
     VarI = --(* VarIPRA[8]);
     VarI = --(*(VarIPRA[8]+9));
     VarI = --(*(VarIPRA[8]++));

     typedef struct ST            typeST  ;
     typedef struct ST *          typeSTP ;
     typedef struct ST * restrict typeSTPR;

     typeST   Obj  = { 0 };
     typeSTP  STP  = 0;
     typeSTPR STPR = 0;

     VarI = * Obj . p03;
     VarI = *(Obj . p03+9);
     VarI = * STP ->p03;
     VarI = *(STP ->p03+9);
     VarI =   STPR->m01;
     VarI =  (STPR+9)->m01;
     VarI =  (STPR++)->m01;
     VarI =   STPR[8].m01;
     VarI =   STPR->m02;
     VarI =  (STPR+9)->m02;
     VarI =  (STPR++)->m02;
     VarI =   STPR[8].m02;
     * Obj . p03 = VarI;
     *(Obj . p03+9) = VarI;
     * STP ->p03 = VarI;
     *(STP ->p03+9) = VarI;
       STPR->m01 = VarI;
      (STPR+9)->m01 = VarI;
       STPR[8].m01 = VarI;
       STPR->m02 = VarI;
      (STPR+9)->m02 = VarI;
       STPR[8].m02 = VarI;
     VarI = (* STP ->p03)++;
     VarI = (*(STP ->p03+9))++;
     VarI = (  STPR->m01)++;
     VarI = ( (STPR+9)->m01)++;
     VarI = (  STPR[8].m01)++;
     VarI = (  STPR->m02)++;
     VarI = ( (STPR+9)->m02)++;
     VarI = (  STPR[8].m02)++;
     VarI = --(* STP ->p03);
     VarI = --(*(STP ->p03+9));
     VarI = --(  STPR->m01);
     VarI = --( (STPR+9)->m01);
     VarI = --(  STPR[8].m01);
     VarI = --(  STPR->m02);
     VarI = --( (STPR+9)->m02);
     VarI = --(  STPR[8].m02);

     VarI = * iprFunc();
     VarI = *(iprFunc()+9);
     * iprFunc() = VarI;
     *(iprFunc()+9) = VarI;
     VarI = (* iprFunc())++;
     VarI = (*(iprFunc()+9))++;
     VarI = --(* iprFunc());
     VarI = --(*(iprFunc()+9));

     VarI = * SpFunc() ->p03;
     VarI = *(SpFunc() ->p03+9);
     VarI =   SprFunc()->m01;
     VarI =  (SprFunc()+9)->m01;
     VarI =   SprFunc()[8].m01;
     VarI =   SprFunc()->m02;
     VarI =  (SprFunc()+9)->m02;
     VarI =   SprFunc()[8].m02;
     * SpFunc() ->p03 = VarI;
     *(SpFunc() ->p03+9) = VarI;
       SprFunc()->m01 = VarI;
      (SprFunc()+9)->m01 = VarI;
       SprFunc()[8].m01 = VarI;
       SprFunc()->m02 = VarI;
      (SprFunc()+9)->m02 = VarI;
       SprFunc()[8].m02 = VarI;
     VarI = (* SpFunc() ->p03)++;
     VarI = (*(SpFunc() ->p03+9))++;
     VarI = (  SprFunc()->m01)++;
     VarI = ( (SprFunc()+9)->m01)++;
     VarI = (  SprFunc()[8].m01)++;
     VarI = (  SprFunc()->m02)++;
     VarI = ( (SprFunc()+9)->m02)++;
     VarI = (  SprFunc()[8].m02)++;
     VarI = --(* SpFunc() ->p03);
     VarI = --(*(SpFunc() ->p03+9));
     VarI = --(  SprFunc()->m01);
     VarI = --( (SprFunc()+9)->m01);
     VarI = --(  SprFunc()[8].m01);
     VarI = --(  SprFunc()->m02);
     VarI = --( (SprFunc()+9)->m02);
     VarI = --(  SprFunc()[8].m02);

}
int main() {
  printf("ok\n");
}

