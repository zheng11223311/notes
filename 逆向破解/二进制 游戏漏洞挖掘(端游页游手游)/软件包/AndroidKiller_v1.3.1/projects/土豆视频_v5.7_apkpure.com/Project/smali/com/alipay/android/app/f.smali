.class Lcom/alipay/android/app/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/MspService;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/MspService;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/alipay/android/app/f;->a:Lcom/alipay/android/app/MspService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 170
    invoke-static {}, Lb/b;->a()Lb/b;

    move-result-object v0

    invoke-virtual {v0}, Lb/b;->c()V

    .line 172
    invoke-static {}, Lf/c;->a()Lf/c;

    move-result-object v0

    const-string/jumbo v1, "uncatch crash"

    invoke-virtual {v0, p2, v1}, Lf/c;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 174
    invoke-static {p2}, Lj/h;->a(Ljava/lang/Object;)V

    .line 175
    return-void
.end method
