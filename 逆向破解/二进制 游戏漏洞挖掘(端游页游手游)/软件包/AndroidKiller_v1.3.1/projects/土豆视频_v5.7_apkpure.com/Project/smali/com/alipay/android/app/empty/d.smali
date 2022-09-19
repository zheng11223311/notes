.class public Lcom/alipay/android/app/empty/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/empty/d$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field private static final d:F = 0.8f

.field private static final e:I = 0x2

.field private static final f:I = 0x2

.field private static final g:I = 0x4

.field private static h:Lcom/alipay/android/app/empty/d;


# instance fields
.field private i:Landroid/util/SparseArray;


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/android/app/empty/d;->i:Landroid/util/SparseArray;

    .line 45
    iget-object v0, p0, Lcom/alipay/android/app/empty/d;->i:Landroid/util/SparseArray;

    const/4 v1, 0x0

    new-instance v2, Lcom/alipay/android/app/empty/d$a;

    invoke-direct {v2, v3}, Lcom/alipay/android/app/empty/d$a;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 47
    iget-object v0, p0, Lcom/alipay/android/app/empty/d;->i:Landroid/util/SparseArray;

    const/4 v1, 0x1

    new-instance v2, Lcom/alipay/android/app/empty/d$a;

    invoke-direct {v2, v3}, Lcom/alipay/android/app/empty/d$a;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 49
    iget-object v0, p0, Lcom/alipay/android/app/empty/d;->i:Landroid/util/SparseArray;

    new-instance v1, Lcom/alipay/android/app/empty/d$a;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/alipay/android/app/empty/d$a;-><init>(I)V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    return-void
.end method

.method public static a()Lcom/alipay/android/app/empty/d;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/alipay/android/app/empty/d;->h:Lcom/alipay/android/app/empty/d;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/alipay/android/app/empty/d;

    invoke-direct {v0}, Lcom/alipay/android/app/empty/d;-><init>()V

    sput-object v0, Lcom/alipay/android/app/empty/d;->h:Lcom/alipay/android/app/empty/d;

    .line 40
    :cond_0
    sget-object v0, Lcom/alipay/android/app/empty/d;->h:Lcom/alipay/android/app/empty/d;

    return-object v0
.end method


# virtual methods
.method public a(II)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alipay/android/app/empty/d;->i:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/empty/d$a;

    .line 61
    if-eqz v0, :cond_0

    .line 62
    iput p2, v0, Lcom/alipay/android/app/empty/d$a;->b:I

    .line 64
    :cond_0
    return-void
.end method

.method public a(ILcom/alipay/android/app/empty/b;)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alipay/android/app/empty/d;->i:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/empty/d$a;

    .line 76
    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0, p2}, Lcom/alipay/android/app/empty/d$a;->a(Lcom/alipay/android/app/empty/b;)V

    .line 79
    :cond_0
    return-void
.end method

.method public a(ILcom/alipay/android/app/empty/c;)V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alipay/android/app/empty/d;->i:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/empty/d$a;

    .line 107
    if-eqz v0, :cond_0

    invoke-interface {p2}, Lcom/alipay/android/app/empty/c;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/empty/d$a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    invoke-virtual {v0}, Lcom/alipay/android/app/empty/d$a;->a()V

    .line 110
    :cond_0
    return-void
.end method

.method public b(ILcom/alipay/android/app/empty/b;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alipay/android/app/empty/d;->i:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/empty/d$a;

    .line 92
    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0, p2}, Lcom/alipay/android/app/empty/d$a;->b(Lcom/alipay/android/app/empty/b;)V

    .line 95
    :cond_0
    return-void
.end method

.method public b(ILcom/alipay/android/app/empty/c;)V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alipay/android/app/empty/d;->i:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/empty/d$a;

    .line 114
    if-eqz v0, :cond_0

    .line 115
    invoke-interface {p2}, Lcom/alipay/android/app/empty/c;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/empty/d$a;->b(I)Z

    .line 117
    :cond_0
    return-void
.end method
