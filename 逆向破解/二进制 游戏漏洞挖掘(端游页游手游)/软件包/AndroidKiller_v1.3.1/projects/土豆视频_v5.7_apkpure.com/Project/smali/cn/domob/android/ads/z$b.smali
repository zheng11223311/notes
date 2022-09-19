.class Lcn/domob/android/ads/z$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field protected static final a:I = 0x1

.field protected static final b:I = 0x2

.field protected static final c:I = 0x3

.field private static final d:I = 0x28

.field private static final e:I = 0x28

.field private static final f:I = 0x24

.field private static final g:I = 0x24

.field private static final h:I = 0x3

.field private static final i:Z


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private j:Landroid/content/Context;

.field private k:Landroid/view/ViewGroup;

.field private l:Landroid/widget/RelativeLayout;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 836
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 868
    const/4 v0, 0x2

    iput v0, p0, Lcn/domob/android/ads/z$b;->z:I

    .line 875
    iput-boolean v1, p0, Lcn/domob/android/ads/z$b;->G:Z

    .line 876
    iput-boolean v1, p0, Lcn/domob/android/ads/z$b;->H:Z

    .line 877
    iput-boolean v1, p0, Lcn/domob/android/ads/z$b;->I:Z

    return-void
.end method


# virtual methods
.method protected A()Z
    .locals 1

    .prologue
    .line 1255
    iget-boolean v0, p0, Lcn/domob/android/ads/z$b;->G:Z

    return v0
.end method

.method protected a(I)V
    .locals 1

    .prologue
    .line 950
    iput p1, p0, Lcn/domob/android/ads/z$b;->A:I

    .line 951
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/z$b;->H:Z

    .line 952
    return-void
.end method

.method protected a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 987
    iput-object p1, p0, Lcn/domob/android/ads/z$b;->j:Landroid/content/Context;

    .line 988
    return-void
.end method

.method protected a(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 1047
    invoke-static {p1, p2}, Lcn/domob/android/ads/c/e;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/z$b;->u:I

    .line 1048
    return-void
.end method

.method protected a(Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 1134
    iput-object p1, p0, Lcn/domob/android/ads/z$b;->k:Landroid/view/ViewGroup;

    .line 1135
    return-void
.end method

.method protected a(Landroid/widget/RelativeLayout;)V
    .locals 0

    .prologue
    .line 915
    iput-object p1, p0, Lcn/domob/android/ads/z$b;->l:Landroid/widget/RelativeLayout;

    .line 916
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 901
    iput-object p1, p0, Lcn/domob/android/ads/z$b;->m:Ljava/lang/String;

    .line 902
    return-void
.end method

.method protected a(Z)V
    .locals 0

    .prologue
    .line 929
    iput-boolean p1, p0, Lcn/domob/android/ads/z$b;->F:Z

    .line 930
    return-void
.end method

.method protected a()Z
    .locals 3

    .prologue
    .line 883
    iget-object v0, p0, Lcn/domob/android/ads/z$b;->j:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/domob/android/ads/z$b;->k:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget v0, p0, Lcn/domob/android/ads/z$b;->q:I

    if-lez v0, :cond_1

    iget v0, p0, Lcn/domob/android/ads/z$b;->r:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 884
    :goto_0
    if-nez v0, :cond_0

    .line 885
    sget-object v1, Lcn/domob/android/ads/c/f;->a:Ljava/lang/String;

    const-string v2, "Parameters provided illegal, can not show ad"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    :cond_0
    return v0

    .line 883
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 1099
    const/16 v0, 0x24

    invoke-static {p1, v0}, Lcn/domob/android/ads/c/e;->a(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 894
    iget-object v0, p0, Lcn/domob/android/ads/z$b;->m:Ljava/lang/String;

    return-object v0
.end method

.method protected b(I)V
    .locals 1

    .prologue
    .line 972
    iput p1, p0, Lcn/domob/android/ads/z$b;->B:I

    .line 973
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/z$b;->I:Z

    .line 974
    return-void
.end method

.method protected b(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 1061
    invoke-static {p1, p2}, Lcn/domob/android/ads/c/e;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/z$b;->t:I

    .line 1062
    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1113
    iput-object p1, p0, Lcn/domob/android/ads/z$b;->n:Ljava/lang/String;

    .line 1114
    return-void
.end method

.method protected b(Z)V
    .locals 0

    .prologue
    .line 1264
    iput-boolean p1, p0, Lcn/domob/android/ads/z$b;->G:Z

    .line 1265
    return-void
.end method

.method protected c(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 1106
    const/16 v0, 0x24

    invoke-static {p1, v0}, Lcn/domob/android/ads/c/e;->a(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method protected c()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 908
    iget-object v0, p0, Lcn/domob/android/ads/z$b;->l:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method protected c(I)V
    .locals 0

    .prologue
    .line 1001
    iput p1, p0, Lcn/domob/android/ads/z$b;->z:I

    .line 1002
    return-void
.end method

.method protected c(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 1075
    invoke-static {p1, p2}, Lcn/domob/android/ads/c/e;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/z$b;->v:I

    .line 1076
    return-void
.end method

.method protected d(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 1271
    const/16 v0, 0x28

    invoke-static {p1, v0}, Lcn/domob/android/ads/c/e;->a(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method protected d(I)V
    .locals 3

    .prologue
    .line 1015
    iput p1, p0, Lcn/domob/android/ads/z$b;->x:I

    .line 1016
    invoke-static {}, Lcn/domob/android/ads/z;->r()Lcn/domob/android/ads/c/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the width of ad is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/domob/android/ads/z$b;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 1017
    return-void
.end method

.method protected d(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 1092
    invoke-static {p1, p2}, Lcn/domob/android/ads/c/e;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/z$b;->w:I

    .line 1093
    return-void
.end method

.method protected d()Z
    .locals 1

    .prologue
    .line 922
    iget-boolean v0, p0, Lcn/domob/android/ads/z$b;->F:Z

    return v0
.end method

.method protected e(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 1278
    const/16 v0, 0x28

    invoke-static {p1, v0}, Lcn/domob/android/ads/c/e;->a(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method protected e(I)V
    .locals 3

    .prologue
    .line 1030
    iput p1, p0, Lcn/domob/android/ads/z$b;->y:I

    .line 1031
    invoke-static {}, Lcn/domob/android/ads/z;->r()Lcn/domob/android/ads/c/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the height of ad is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/domob/android/ads/z$b;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 1032
    return-void
.end method

.method protected e()Z
    .locals 1

    .prologue
    .line 936
    iget-boolean v0, p0, Lcn/domob/android/ads/z$b;->H:Z

    return v0
.end method

.method protected f()I
    .locals 1

    .prologue
    .line 943
    iget v0, p0, Lcn/domob/android/ads/z$b;->A:I

    return v0
.end method

.method protected f(I)V
    .locals 0

    .prologue
    .line 1148
    iput p1, p0, Lcn/domob/android/ads/z$b;->o:I

    .line 1149
    return-void
.end method

.method protected g(I)V
    .locals 0

    .prologue
    .line 1162
    iput p1, p0, Lcn/domob/android/ads/z$b;->p:I

    .line 1163
    return-void
.end method

.method protected g()Z
    .locals 1

    .prologue
    .line 958
    iget-boolean v0, p0, Lcn/domob/android/ads/z$b;->I:Z

    return v0
.end method

.method protected h()I
    .locals 1

    .prologue
    .line 965
    iget v0, p0, Lcn/domob/android/ads/z$b;->B:I

    return v0
.end method

.method protected h(I)V
    .locals 0

    .prologue
    .line 1176
    iput p1, p0, Lcn/domob/android/ads/z$b;->D:I

    .line 1177
    return-void
.end method

.method protected i()Landroid/content/Context;
    .locals 1

    .prologue
    .line 980
    iget-object v0, p0, Lcn/domob/android/ads/z$b;->j:Landroid/content/Context;

    return-object v0
.end method

.method protected i(I)V
    .locals 0

    .prologue
    .line 1190
    iput p1, p0, Lcn/domob/android/ads/z$b;->E:I

    .line 1191
    return-void
.end method

.method protected j()I
    .locals 1

    .prologue
    .line 994
    iget v0, p0, Lcn/domob/android/ads/z$b;->z:I

    return v0
.end method

.method protected j(I)V
    .locals 3

    .prologue
    .line 1204
    iput p1, p0, Lcn/domob/android/ads/z$b;->q:I

    .line 1205
    invoke-static {}, Lcn/domob/android/ads/z;->r()Lcn/domob/android/ads/c/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "secure area width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/domob/android/ads/z$b;->q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 1206
    return-void
.end method

.method protected k()I
    .locals 1

    .prologue
    .line 1008
    iget v0, p0, Lcn/domob/android/ads/z$b;->x:I

    return v0
.end method

.method protected k(I)V
    .locals 3

    .prologue
    .line 1219
    iput p1, p0, Lcn/domob/android/ads/z$b;->r:I

    .line 1220
    invoke-static {}, Lcn/domob/android/ads/z;->r()Lcn/domob/android/ads/c/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "secure area height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/domob/android/ads/z$b;->r:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 1221
    return-void
.end method

.method protected l()I
    .locals 1

    .prologue
    .line 1023
    iget v0, p0, Lcn/domob/android/ads/z$b;->y:I

    return v0
.end method

.method protected l(I)V
    .locals 0

    .prologue
    .line 1234
    iput p1, p0, Lcn/domob/android/ads/z$b;->s:I

    .line 1235
    return-void
.end method

.method protected m()I
    .locals 1

    .prologue
    .line 1039
    iget v0, p0, Lcn/domob/android/ads/z$b;->u:I

    return v0
.end method

.method protected m(I)V
    .locals 0

    .prologue
    .line 1248
    iput p1, p0, Lcn/domob/android/ads/z$b;->C:I

    .line 1249
    return-void
.end method

.method protected n()I
    .locals 1

    .prologue
    .line 1054
    iget v0, p0, Lcn/domob/android/ads/z$b;->t:I

    return v0
.end method

.method protected o()I
    .locals 1

    .prologue
    .line 1068
    iget v0, p0, Lcn/domob/android/ads/z$b;->v:I

    return v0
.end method

.method protected p()I
    .locals 1

    .prologue
    .line 1084
    iget v0, p0, Lcn/domob/android/ads/z$b;->w:I

    return v0
.end method

.method protected q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1120
    iget-object v0, p0, Lcn/domob/android/ads/z$b;->n:Ljava/lang/String;

    return-object v0
.end method

.method protected r()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 1127
    iget-object v0, p0, Lcn/domob/android/ads/z$b;->k:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected s()I
    .locals 1

    .prologue
    .line 1141
    iget v0, p0, Lcn/domob/android/ads/z$b;->o:I

    return v0
.end method

.method protected t()I
    .locals 1

    .prologue
    .line 1155
    iget v0, p0, Lcn/domob/android/ads/z$b;->p:I

    return v0
.end method

.method protected u()I
    .locals 1

    .prologue
    .line 1169
    iget v0, p0, Lcn/domob/android/ads/z$b;->D:I

    return v0
.end method

.method protected v()I
    .locals 1

    .prologue
    .line 1183
    iget v0, p0, Lcn/domob/android/ads/z$b;->E:I

    return v0
.end method

.method protected w()I
    .locals 1

    .prologue
    .line 1197
    iget v0, p0, Lcn/domob/android/ads/z$b;->q:I

    return v0
.end method

.method protected x()I
    .locals 1

    .prologue
    .line 1212
    iget v0, p0, Lcn/domob/android/ads/z$b;->r:I

    return v0
.end method

.method protected y()I
    .locals 1

    .prologue
    .line 1227
    iget v0, p0, Lcn/domob/android/ads/z$b;->s:I

    return v0
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 1241
    iget v0, p0, Lcn/domob/android/ads/z$b;->C:I

    return v0
.end method
