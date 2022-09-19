.class Lcom/tudou/adapter/IndexPageAdapter$11;
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

.field final synthetic val$info:Lcom/youku/vo/SkipInfo;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/IndexPageAdapter;Lcom/youku/vo/IndexPageItem;Lcom/youku/vo/SkipInfo;Lcom/tudou/adapter/IndexNotifyItem;)V
    .locals 0

    .prologue
    .line 719
    iput-object p1, p0, Lcom/tudou/adapter/IndexPageAdapter$11;->this$0:Lcom/tudou/adapter/IndexPageAdapter;

    iput-object p2, p0, Lcom/tudou/adapter/IndexPageAdapter$11;->val$aIndexPageItem:Lcom/youku/vo/IndexPageItem;

    iput-object p3, p0, Lcom/tudou/adapter/IndexPageAdapter$11;->val$info:Lcom/youku/vo/SkipInfo;

    iput-object p4, p0, Lcom/tudou/adapter/IndexPageAdapter$11;->val$aNotifyItem:Lcom/tudou/adapter/IndexNotifyItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 725
    const-string v0, "notifyId"

    iget-object v1, p0, Lcom/tudou/adapter/IndexPageAdapter$11;->val$aIndexPageItem:Lcom/youku/vo/IndexPageItem;

    iget-object v1, v1, Lcom/youku/vo/IndexPageItem;->mNotify:Lcom/youku/vo/Notifications;

    iget-object v1, v1, Lcom/youku/vo/Notifications;->sysnotify:Lcom/youku/vo/Notifications$Sys_notify;

    iget v1, v1, Lcom/youku/vo/Notifications$Sys_notify;->id:I

    invoke-static {v0, v1}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;I)V

    .line 726
    iget-object v0, p0, Lcom/tudou/adapter/IndexPageAdapter$11;->val$info:Lcom/youku/vo/SkipInfo;

    iget-object v1, p0, Lcom/tudou/adapter/IndexPageAdapter$11;->this$0:Lcom/tudou/adapter/IndexPageAdapter;

    invoke-static {v1}, Lcom/tudou/adapter/IndexPageAdapter;->access$000(Lcom/tudou/adapter/IndexPageAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/vo/SkipInfo;->skip(Landroid/app/Activity;)V

    .line 728
    iget-object v0, p0, Lcom/tudou/adapter/IndexPageAdapter$11;->this$0:Lcom/tudou/adapter/IndexPageAdapter;

    const-string v1, "\u7cfb\u7edf\u901a\u77e5"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/tudou/adapter/IndexPageAdapter;->access$300(Lcom/tudou/adapter/IndexPageAdapter;Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    iget-object v0, p0, Lcom/tudou/adapter/IndexPageAdapter$11;->this$0:Lcom/tudou/adapter/IndexPageAdapter;

    iget-object v1, p0, Lcom/tudou/adapter/IndexPageAdapter$11;->val$aNotifyItem:Lcom/tudou/adapter/IndexNotifyItem;

    invoke-virtual {v0, v1}, Lcom/tudou/adapter/IndexPageAdapter;->deleteNotify(Lcom/tudou/adapter/IndexNotifyItem;)V

    .line 758
    return-void
.end method
