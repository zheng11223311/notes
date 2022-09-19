.class Lcom/tudou/adapter/HotHistoryAdapter$5;
.super Ljava/lang/Object;
.source "HotHistoryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/HotHistoryAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/HotHistoryAdapter;

.field final synthetic val$finalTemppos:I

.field final synthetic val$podcast2:Lcom/youku/vo/SearchOfPodcasts;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/HotHistoryAdapter;Lcom/youku/vo/SearchOfPodcasts;I)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/tudou/adapter/HotHistoryAdapter$5;->this$0:Lcom/tudou/adapter/HotHistoryAdapter;

    iput-object p2, p0, Lcom/tudou/adapter/HotHistoryAdapter$5;->val$podcast2:Lcom/youku/vo/SearchOfPodcasts;

    iput p3, p0, Lcom/tudou/adapter/HotHistoryAdapter$5;->val$finalTemppos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/tudou/adapter/HotHistoryAdapter$5;->this$0:Lcom/tudou/adapter/HotHistoryAdapter;

    invoke-static {v0}, Lcom/tudou/adapter/HotHistoryAdapter;->access$300(Lcom/tudou/adapter/HotHistoryAdapter;)Lcom/tudou/adapter/HotHistoryAdapter$OnPodCastClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/tudou/adapter/HotHistoryAdapter$5;->this$0:Lcom/tudou/adapter/HotHistoryAdapter;

    invoke-static {v0}, Lcom/tudou/adapter/HotHistoryAdapter;->access$300(Lcom/tudou/adapter/HotHistoryAdapter;)Lcom/tudou/adapter/HotHistoryAdapter$OnPodCastClickListener;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tudou/adapter/HotHistoryAdapter$5;->val$podcast2:Lcom/youku/vo/SearchOfPodcasts;

    iget-object v2, v2, Lcom/youku/vo/SearchOfPodcasts;->nickname:Ljava/lang/String;

    iget v3, p0, Lcom/tudou/adapter/HotHistoryAdapter$5;->val$finalTemppos:I

    iget-object v4, p0, Lcom/tudou/adapter/HotHistoryAdapter$5;->val$podcast2:Lcom/youku/vo/SearchOfPodcasts;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/tudou/adapter/HotHistoryAdapter$OnPodCastClickListener;->onPodCastItemClick(ZLjava/lang/String;ILcom/youku/vo/SearchOfPodcasts;)V

    .line 242
    :cond_0
    return-void
.end method
