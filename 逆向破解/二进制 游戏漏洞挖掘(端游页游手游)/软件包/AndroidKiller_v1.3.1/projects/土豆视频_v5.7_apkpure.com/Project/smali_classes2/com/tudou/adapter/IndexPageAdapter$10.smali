.class Lcom/tudou/adapter/IndexPageAdapter$10;
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

.field final synthetic val$aNotifyItem:Lcom/tudou/adapter/IndexNotifyItem;

.field final synthetic val$vi:Lcom/youku/vo/HistoryVideo;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/IndexPageAdapter;Lcom/youku/vo/HistoryVideo;Lcom/tudou/adapter/IndexNotifyItem;)V
    .locals 0

    .prologue
    .line 688
    iput-object p1, p0, Lcom/tudou/adapter/IndexPageAdapter$10;->this$0:Lcom/tudou/adapter/IndexPageAdapter;

    iput-object p2, p0, Lcom/tudou/adapter/IndexPageAdapter$10;->val$vi:Lcom/youku/vo/HistoryVideo;

    iput-object p3, p0, Lcom/tudou/adapter/IndexPageAdapter$10;->val$aNotifyItem:Lcom/tudou/adapter/IndexNotifyItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 695
    iget-object v0, p0, Lcom/tudou/adapter/IndexPageAdapter$10;->this$0:Lcom/tudou/adapter/IndexPageAdapter;

    iget-object v0, v0, Lcom/tudou/adapter/IndexPageAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/tudou/adapter/IndexPageAdapter$10;->val$vi:Lcom/youku/vo/HistoryVideo;

    iget-object v1, v1, Lcom/youku/vo/HistoryVideo;->itemCode:Ljava/lang/String;

    sget-object v2, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    iget-object v3, p0, Lcom/tudou/adapter/IndexPageAdapter$10;->val$vi:Lcom/youku/vo/HistoryVideo;

    iget-object v3, v3, Lcom/youku/vo/HistoryVideo;->title:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;)V

    .line 700
    iget-object v0, p0, Lcom/tudou/adapter/IndexPageAdapter$10;->this$0:Lcom/tudou/adapter/IndexPageAdapter;

    iget-object v1, p0, Lcom/tudou/adapter/IndexPageAdapter$10;->val$aNotifyItem:Lcom/tudou/adapter/IndexNotifyItem;

    invoke-virtual {v0, v1}, Lcom/tudou/adapter/IndexPageAdapter;->deleteNotify(Lcom/tudou/adapter/IndexNotifyItem;)V

    .line 702
    iget-object v0, p0, Lcom/tudou/adapter/IndexPageAdapter$10;->this$0:Lcom/tudou/adapter/IndexPageAdapter;

    const-string v1, "\u64ad\u653e\u5386\u53f2"

    iget-object v2, p0, Lcom/tudou/adapter/IndexPageAdapter$10;->val$vi:Lcom/youku/vo/HistoryVideo;

    iget-object v2, v2, Lcom/youku/vo/HistoryVideo;->itemCode:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tudou/adapter/IndexPageAdapter;->access$300(Lcom/tudou/adapter/IndexPageAdapter;Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    return-void
.end method
