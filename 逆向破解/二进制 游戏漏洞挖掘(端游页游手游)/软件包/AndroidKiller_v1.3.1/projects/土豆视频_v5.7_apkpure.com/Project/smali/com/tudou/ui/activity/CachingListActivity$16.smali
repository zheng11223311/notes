.class Lcom/tudou/ui/activity/CachingListActivity$16;
.super Ljava/lang/Object;
.source "CachingListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/activity/CachingListActivity;->show2G3GDialogOpen(Lcom/tudou/service/download/DownloadInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/activity/CachingListActivity;


# direct methods
.method constructor <init>(Lcom/tudou/ui/activity/CachingListActivity;)V
    .locals 0

    .prologue
    .line 652
    iput-object p1, p0, Lcom/tudou/ui/activity/CachingListActivity$16;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 656
    const/16 v0, 0x54

    if-ne p2, v0, :cond_0

    .line 658
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
