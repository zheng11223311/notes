.class Lcom/tudou/adapter/IndexPageAdapter$13;
.super Ljava/lang/Object;
.source "IndexPageAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/IndexPageAdapter;->initNotify(Lcom/tudou/adapter/IndexNotifyItem;Lcom/youku/vo/IndexPageItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/IndexPageAdapter;

.field final synthetic val$aIndexPageItem:Lcom/youku/vo/IndexPageItem;

.field final synthetic val$aNotifyItem:Lcom/tudou/adapter/IndexNotifyItem;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/IndexPageAdapter;Lcom/youku/vo/IndexPageItem;Lcom/tudou/adapter/IndexNotifyItem;)V
    .locals 0

    .prologue
    .line 786
    iput-object p1, p0, Lcom/tudou/adapter/IndexPageAdapter$13;->this$0:Lcom/tudou/adapter/IndexPageAdapter;

    iput-object p2, p0, Lcom/tudou/adapter/IndexPageAdapter$13;->val$aIndexPageItem:Lcom/youku/vo/IndexPageItem;

    iput-object p3, p0, Lcom/tudou/adapter/IndexPageAdapter$13;->val$aNotifyItem:Lcom/tudou/adapter/IndexNotifyItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 790
    const-string v1, "subnotifyId"

    iget-object v2, p0, Lcom/tudou/adapter/IndexPageAdapter$13;->val$aIndexPageItem:Lcom/youku/vo/IndexPageItem;

    iget-object v2, v2, Lcom/youku/vo/IndexPageItem;->mNotify:Lcom/youku/vo/Notifications;

    iget-object v2, v2, Lcom/youku/vo/Notifications;->subupdates:Lcom/youku/vo/Notifications$Sub_updates;

    iget-object v2, v2, Lcom/youku/vo/Notifications$Sub_updates;->sysid:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    iget-object v1, p0, Lcom/tudou/adapter/IndexPageAdapter$13;->this$0:Lcom/tudou/adapter/IndexPageAdapter;

    invoke-static {v1}, Lcom/tudou/adapter/IndexPageAdapter;->access$000(Lcom/tudou/adapter/IndexPageAdapter;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/activity/HomePageActivity;

    .line 795
    .local v0, "ac":Lcom/tudou/ui/activity/HomePageActivity;
    invoke-virtual {v0}, Lcom/tudou/ui/activity/HomePageActivity;->goSub()V

    .line 796
    iget-object v1, p0, Lcom/tudou/adapter/IndexPageAdapter$13;->this$0:Lcom/tudou/adapter/IndexPageAdapter;

    iget-object v2, p0, Lcom/tudou/adapter/IndexPageAdapter$13;->val$aNotifyItem:Lcom/tudou/adapter/IndexNotifyItem;

    invoke-virtual {v1, v2}, Lcom/tudou/adapter/IndexPageAdapter;->deleteNotify(Lcom/tudou/adapter/IndexNotifyItem;)V

    .line 798
    iget-object v1, p0, Lcom/tudou/adapter/IndexPageAdapter$13;->this$0:Lcom/tudou/adapter/IndexPageAdapter;

    const-string v2, "\u8ba2\u9605\u63d0\u793a"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/tudou/adapter/IndexPageAdapter;->access$300(Lcom/tudou/adapter/IndexPageAdapter;Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    return-void
.end method
