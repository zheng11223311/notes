.class public Lb/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public a(Lb/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-static {}, Lf/j;->a()Lf/j;

    move-result-object v0

    invoke-virtual {v0}, Lf/j;->b()V

    .line 33
    return-void
.end method

.method public b(Lb/a;)V
    .locals 2

    .prologue
    .line 38
    :try_start_0
    invoke-virtual {p1}, Lb/a;->c()Lb/g;

    move-result-object v0

    .line 40
    invoke-static {}, Lf/j;->a()Lf/j;

    move-result-object v1

    invoke-virtual {v0}, Lb/g;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lf/j;->b(Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lf/j;->a()Lf/j;

    move-result-object v0

    const-string v1, "lbs"

    invoke-virtual {v0, v1}, Lf/j;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
