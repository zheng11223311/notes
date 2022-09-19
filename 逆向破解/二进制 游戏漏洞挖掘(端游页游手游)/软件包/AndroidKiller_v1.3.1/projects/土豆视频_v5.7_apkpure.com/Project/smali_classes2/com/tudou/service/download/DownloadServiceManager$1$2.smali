.class Lcom/tudou/service/download/DownloadServiceManager$1$2;
.super Landroid/os/Handler;
.source "DownloadServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/service/download/DownloadServiceManager$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/service/download/DownloadServiceManager$1;


# direct methods
.method constructor <init>(Lcom/tudou/service/download/DownloadServiceManager$1;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/tudou/service/download/DownloadServiceManager$1$2;->this$1:Lcom/tudou/service/download/DownloadServiceManager$1;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method
