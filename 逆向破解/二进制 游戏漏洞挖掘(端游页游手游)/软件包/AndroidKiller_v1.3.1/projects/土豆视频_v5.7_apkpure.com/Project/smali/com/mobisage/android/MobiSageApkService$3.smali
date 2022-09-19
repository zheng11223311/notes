.class Lcom/mobisage/android/MobiSageApkService$3;
.super Ljava/lang/Thread;
.source "MobiSageApkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobisage/android/MobiSageApkService;->processStartApkDownload(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobisage/android/MobiSageApkService;

.field final synthetic val$params:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/mobisage/android/MobiSageApkService;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/mobisage/android/MobiSageApkService$3;->this$0:Lcom/mobisage/android/MobiSageApkService;

    iput-object p2, p0, Lcom/mobisage/android/MobiSageApkService$3;->val$params:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/mobisage/android/MobiSageApkService$3;->this$0:Lcom/mobisage/android/MobiSageApkService;

    iget-object v1, p0, Lcom/mobisage/android/MobiSageApkService$3;->val$params:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/mobisage/android/MobiSageApkService;->access$100(Lcom/mobisage/android/MobiSageApkService;Landroid/os/Bundle;)V

    .line 391
    return-void
.end method
