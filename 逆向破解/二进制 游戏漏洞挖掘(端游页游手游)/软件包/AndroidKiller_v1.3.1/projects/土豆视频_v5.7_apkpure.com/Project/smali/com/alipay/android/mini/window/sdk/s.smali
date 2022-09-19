.class Lcom/alipay/android/mini/window/sdk/s;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lb/e;

.field final synthetic b:Lcom/alipay/android/mini/window/sdk/l;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/window/sdk/l;Lb/e;)V
    .locals 0

    .prologue
    .line 462
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/s;->b:Lcom/alipay/android/mini/window/sdk/l;

    iput-object p2, p0, Lcom/alipay/android/mini/window/sdk/s;->a:Lb/e;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 464
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/s;->b:Lcom/alipay/android/mini/window/sdk/l;

    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/s;->a:Lb/e;

    invoke-static {v0, v1}, Lcom/alipay/android/mini/window/sdk/l;->a(Lcom/alipay/android/mini/window/sdk/l;Lb/e;)V

    .line 465
    return-void
.end method
