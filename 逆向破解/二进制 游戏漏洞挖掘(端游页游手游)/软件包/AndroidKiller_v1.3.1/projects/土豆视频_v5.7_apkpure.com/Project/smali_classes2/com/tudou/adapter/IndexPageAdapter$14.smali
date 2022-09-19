.class Lcom/tudou/adapter/IndexPageAdapter$14;
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
    .line 807
    iput-object p1, p0, Lcom/tudou/adapter/IndexPageAdapter$14;->this$0:Lcom/tudou/adapter/IndexPageAdapter;

    iput-object p2, p0, Lcom/tudou/adapter/IndexPageAdapter$14;->val$aIndexPageItem:Lcom/youku/vo/IndexPageItem;

    iput-object p3, p0, Lcom/tudou/adapter/IndexPageAdapter$14;->val$aNotifyItem:Lcom/tudou/adapter/IndexNotifyItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 813
    iget-object v0, p0, Lcom/tudou/adapter/IndexPageAdapter$14;->val$aIndexPageItem:Lcom/youku/vo/IndexPageItem;

    iget-object v0, v0, Lcom/youku/vo/IndexPageItem;->mNotify:Lcom/youku/vo/Notifications;

    iget-object v0, v0, Lcom/youku/vo/Notifications;->playhistory:Lcom/youku/vo/Notifications$View_record;

    iget-object v0, v0, Lcom/youku/vo/Notifications$View_record;->aid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 814
    iget-object v0, p0, Lcom/tudou/adapter/IndexPageAdapter$14;->this$0:Lcom/tudou/adapter/IndexPageAdapter;

    invoke-static {v0}, Lcom/tudou/adapter/IndexPageAdapter;->access$000(Lcom/tudou/adapter/IndexPageAdapter;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/adapter/IndexPageAdapter$14;->val$aIndexPageItem:Lcom/youku/vo/IndexPageItem;

    iget-object v1, v1, Lcom/youku/vo/IndexPageItem;->mNotify:Lcom/youku/vo/Notifications;

    iget-object v1, v1, Lcom/youku/vo/Notifications;->playhistory:Lcom/youku/vo/Notifications$View_record;

    iget-object v1, v1, Lcom/youku/vo/Notifications$View_record;->aid:Ljava/lang/String;

    sget-object v2, Lcom/tudou/android/Youku$Type;->SHOWID:Lcom/tudou/android/Youku$Type;

    iget-object v3, p0, Lcom/tudou/adapter/IndexPageAdapter$14;->val$aIndexPageItem:Lcom/youku/vo/IndexPageItem;

    iget-object v3, v3, Lcom/youku/vo/IndexPageItem;->mNotify:Lcom/youku/vo/Notifications;

    iget-object v3, v3, Lcom/youku/vo/Notifications;->playhistory:Lcom/youku/vo/Notifications$View_record;

    iget-object v3, v3, Lcom/youku/vo/Notifications$View_record;->title:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;)V

    .line 817
    iget-object v0, p0, Lcom/tudou/adapter/IndexPageAdapter$14;->this$0:Lcom/tudou/adapter/IndexPageAdapter;

    const-string v1, "\u64ad\u653e\u5386\u53f2"

    iget-object v2, p0, Lcom/tudou/adapter/IndexPageAdapter$14;->val$aIndexPageItem:Lcom/youku/vo/IndexPageItem;

    iget-object v2, v2, Lcom/youku/vo/IndexPageItem;->mNotify:Lcom/youku/vo/Notifications;

    iget-object v2, v2, Lcom/youku/vo/Notifications;->playhistory:Lcom/youku/vo/Notifications$View_record;

    iget-object v2, v2, Lcom/youku/vo/Notifications$View_record;->aid:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tudou/adapter/IndexPageAdapter;->access$300(Lcom/tudou/adapter/IndexPageAdapter;Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    :goto_0
    iget-object v0, p0, Lcom/tudou/adapter/IndexPageAdapter$14;->this$0:Lcom/tudou/adapter/IndexPageAdapter;

    iget-object v1, p0, Lcom/tudou/adapter/IndexPageAdapter$14;->val$aNotifyItem:Lcom/tudou/adapter/IndexNotifyItem;

    invoke-virtual {v0, v1}, Lcom/tudou/adapter/IndexPageAdapter;->deleteNotify(Lcom/tudou/adapter/IndexNotifyItem;)V

    .line 827
    return-void

    .line 819
    :cond_0
    iget-object v0, p0, Lcom/tudou/adapter/IndexPageAdapter$14;->this$0:Lcom/tudou/adapter/IndexPageAdapter;

    invoke-static {v0}, Lcom/tudou/adapter/IndexPageAdapter;->access$000(Lcom/tudou/adapter/IndexPageAdapter;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/adapter/IndexPageAdapter$14;->val$aIndexPageItem:Lcom/youku/vo/IndexPageItem;

    iget-object v1, v1, Lcom/youku/vo/IndexPageItem;->mNotify:Lcom/youku/vo/Notifications;

    iget-object v1, v1, Lcom/youku/vo/Notifications;->playhistory:Lcom/youku/vo/Notifications$View_record;

    iget-object v1, v1, Lcom/youku/vo/Notifications$View_record;->iid:Ljava/lang/String;

    sget-object v2, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    iget-object v3, p0, Lcom/tudou/adapter/IndexPageAdapter$14;->val$aIndexPageItem:Lcom/youku/vo/IndexPageItem;

    iget-object v3, v3, Lcom/youku/vo/IndexPageItem;->mNotify:Lcom/youku/vo/Notifications;

    iget-object v3, v3, Lcom/youku/vo/Notifications;->playhistory:Lcom/youku/vo/Notifications$View_record;

    iget-object v3, v3, Lcom/youku/vo/Notifications$View_record;->title:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;)V

    .line 822
    iget-object v0, p0, Lcom/tudou/adapter/IndexPageAdapter$14;->this$0:Lcom/tudou/adapter/IndexPageAdapter;

    const-string v1, "\u64ad\u653e\u5386\u53f2"

    iget-object v2, p0, Lcom/tudou/adapter/IndexPageAdapter$14;->val$aIndexPageItem:Lcom/youku/vo/IndexPageItem;

    iget-object v2, v2, Lcom/youku/vo/IndexPageItem;->mNotify:Lcom/youku/vo/Notifications;

    iget-object v2, v2, Lcom/youku/vo/Notifications;->playhistory:Lcom/youku/vo/Notifications$View_record;

    iget-object v2, v2, Lcom/youku/vo/Notifications$View_record;->iid:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tudou/adapter/IndexPageAdapter;->access$300(Lcom/tudou/adapter/IndexPageAdapter;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
