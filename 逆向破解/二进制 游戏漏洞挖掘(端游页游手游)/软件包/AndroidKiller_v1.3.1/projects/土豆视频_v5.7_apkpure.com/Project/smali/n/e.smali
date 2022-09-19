.class public Ln/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ln/e;

.field private static b:Ljava/lang/Class;


# instance fields
.field private c:Landroid/util/SparseArray;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Ln/e;->c:Landroid/util/SparseArray;

    .line 25
    return-void
.end method

.method public static a()Ln/e;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Ln/e;->a:Ln/e;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Ln/e;

    invoke-direct {v0}, Ln/e;-><init>()V

    sput-object v0, Ln/e;->a:Ln/e;

    .line 31
    :cond_0
    sget-object v0, Ln/e;->a:Ln/e;

    return-object v0
.end method

.method public static a(Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 40
    sput-object p0, Ln/e;->b:Ljava/lang/Class;

    .line 41
    return-void
.end method


# virtual methods
.method public a(I)Ln/d;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Ln/e;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/d;

    .line 52
    if-nez v0, :cond_0

    .line 54
    :try_start_0
    sget-object v0, Ln/e;->b:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/d;

    .line 55
    iget-object v1, p0, Ln/e;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :cond_0
    return-object v0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    new-instance v1, Lcom/alipay/android/app/exception/AppErrorException;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "can not creat script excutor"

    invoke-direct {v1, v0, v2}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v1
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Ln/e;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/d;

    .line 66
    if-eqz v0, :cond_0

    .line 67
    invoke-interface {v0}, Ln/d;->i()V

    .line 68
    iget-object v0, p0, Ln/e;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 70
    :cond_0
    return-void
.end method
