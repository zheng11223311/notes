.class Lcom/tudou/ui/activity/MoreDownloadActivity$1;
.super Ljava/lang/Object;
.source "MoreDownloadActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/activity/MoreDownloadActivity;->initTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/activity/MoreDownloadActivity;


# direct methods
.method constructor <init>(Lcom/tudou/ui/activity/MoreDownloadActivity;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/tudou/ui/activity/MoreDownloadActivity$1;->this$0:Lcom/tudou/ui/activity/MoreDownloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/tudou/ui/activity/MoreDownloadActivity$1;->this$0:Lcom/tudou/ui/activity/MoreDownloadActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/MoreDownloadActivity;->finish()V

    .line 69
    return-void
.end method
