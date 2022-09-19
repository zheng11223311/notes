.class Lcom/tudou/ui/activity/CachingListActivity$11;
.super Ljava/lang/Object;
.source "CachingListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/activity/CachingListActivity;->deleteSelected()V
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
    .line 493
    iput-object p1, p0, Lcom/tudou/ui/activity/CachingListActivity$11;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialoginterface"    # Landroid/content/DialogInterface;
    .param p2, "arg"    # I

    .prologue
    .line 495
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity$11;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v0}, Lcom/tudou/ui/activity/CachingListActivity;->access$1200(Lcom/tudou/ui/activity/CachingListActivity;)V

    .line 496
    return-void
.end method
