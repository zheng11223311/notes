.class Lcom/tudou/adapter/SubscribeAdapter$13;
.super Ljava/lang/Object;
.source "SubscribeAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/SubscribeAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/SubscribeAdapter;

.field final synthetic val$data:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$AlbumInfo;

.field final synthetic val$position:I

.field final synthetic val$user:Lcom/youku/vo/SubscribeBean$UserInfo;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/SubscribeAdapter;Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$AlbumInfo;ILcom/youku/vo/SubscribeBean$UserInfo;)V
    .locals 0

    .prologue
    .line 782
    iput-object p1, p0, Lcom/tudou/adapter/SubscribeAdapter$13;->this$0:Lcom/tudou/adapter/SubscribeAdapter;

    iput-object p2, p0, Lcom/tudou/adapter/SubscribeAdapter$13;->val$data:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$AlbumInfo;

    iput p3, p0, Lcom/tudou/adapter/SubscribeAdapter$13;->val$position:I

    iput-object p4, p0, Lcom/tudou/adapter/SubscribeAdapter$13;->val$user:Lcom/youku/vo/SubscribeBean$UserInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 785
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tudou/ui/fragment/SubscribeFragment;->mRefreshKey:Z

    .line 786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "t1.subscribe_ssubscribe.videoclick.1_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/adapter/SubscribeAdapter$13;->val$data:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$AlbumInfo;

    iget-object v1, v1, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$AlbumInfo;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tudou/adapter/SubscribeAdapter$13;->val$position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 787
    iget-object v0, p0, Lcom/tudou/adapter/SubscribeAdapter$13;->this$0:Lcom/tudou/adapter/SubscribeAdapter;

    invoke-static {v0}, Lcom/tudou/adapter/SubscribeAdapter;->access$100(Lcom/tudou/adapter/SubscribeAdapter;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/adapter/SubscribeAdapter$13;->val$data:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$AlbumInfo;

    iget-object v1, v1, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$AlbumInfo;->code:Ljava/lang/String;

    sget-object v2, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    iget-object v3, p0, Lcom/tudou/adapter/SubscribeAdapter$13;->val$data:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$AlbumInfo;

    iget-object v3, v3, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$AlbumInfo;->title:Ljava/lang/String;

    iget-object v5, p0, Lcom/tudou/adapter/SubscribeAdapter$13;->val$user:Lcom/youku/vo/SubscribeBean$UserInfo;

    iget-object v5, v5, Lcom/youku/vo/SubscribeBean$UserInfo;->short_desc:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    return-void
.end method
