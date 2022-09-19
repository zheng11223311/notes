.class Lcom/tudou/ui/activity/CachingListActivity$23;
.super Ljava/lang/Object;
.source "CachingListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/activity/CachingListActivity;->show2G3GDialogOpen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/activity/CachingListActivity;

.field final synthetic val$dialog:Lcom/youku/widget/TudouDialog;


# direct methods
.method constructor <init>(Lcom/tudou/ui/activity/CachingListActivity;Lcom/youku/widget/TudouDialog;)V
    .locals 0

    .prologue
    .line 737
    iput-object p1, p0, Lcom/tudou/ui/activity/CachingListActivity$23;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    iput-object p2, p0, Lcom/tudou/ui/activity/CachingListActivity$23;->val$dialog:Lcom/youku/widget/TudouDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 739
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity$23;->val$dialog:Lcom/youku/widget/TudouDialog;

    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->dismiss()V

    .line 740
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity$23;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v0}, Lcom/tudou/ui/activity/CachingListActivity;->access$200(Lcom/tudou/ui/activity/CachingListActivity;)V

    .line 741
    return-void
.end method
