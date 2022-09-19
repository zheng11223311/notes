.class Lcom/tudou/adapter/IndexPageAdapter$18;
.super Ljava/lang/Object;
.source "IndexPageAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/IndexPageAdapter;->initPaper(Lcom/tudou/adapter/IndexItemPaper;Lcom/youku/vo/IndexPageItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/IndexPageAdapter;

.field final synthetic val$aIndexPageItem:Lcom/youku/vo/IndexPageItem;

.field final synthetic val$info:Lcom/youku/vo/CardInfo;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/IndexPageAdapter;Lcom/youku/vo/CardInfo;Lcom/youku/vo/IndexPageItem;)V
    .locals 0

    .prologue
    .line 984
    iput-object p1, p0, Lcom/tudou/adapter/IndexPageAdapter$18;->this$0:Lcom/tudou/adapter/IndexPageAdapter;

    iput-object p2, p0, Lcom/tudou/adapter/IndexPageAdapter$18;->val$info:Lcom/youku/vo/CardInfo;

    iput-object p3, p0, Lcom/tudou/adapter/IndexPageAdapter$18;->val$aIndexPageItem:Lcom/youku/vo/IndexPageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 987
    iget-object v4, p0, Lcom/tudou/adapter/IndexPageAdapter$18;->val$info:Lcom/youku/vo/CardInfo;

    iget-object v1, v4, Lcom/youku/vo/CardInfo;->skip_inf:Lcom/youku/vo/SkipInfo;

    .line 988
    .local v1, "skipInfo":Lcom/youku/vo/SkipInfo;
    iget-object v4, p0, Lcom/tudou/adapter/IndexPageAdapter$18;->val$aIndexPageItem:Lcom/youku/vo/IndexPageItem;

    iget v4, v4, Lcom/youku/vo/IndexPageItem;->itemType:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_2

    .line 989
    const/4 v3, 0x0

    .line 990
    .local v3, "videoId":Ljava/lang/String;
    iget-object v4, v1, Lcom/youku/vo/SkipInfo;->album_id:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 991
    iget-object v3, v1, Lcom/youku/vo/SkipInfo;->album_id:Ljava/lang/String;

    .line 997
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "t1.home_shome.channelvideoclick__.1_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/adapter/IndexPageAdapter$18;->val$info:Lcom/youku/vo/CardInfo;

    iget v5, v5, Lcom/youku/vo/CardInfo;->contentIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 999
    .local v2, "tracker":Ljava/lang/String;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1000
    .local v0, "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "ct"

    iget-object v5, p0, Lcom/tudou/adapter/IndexPageAdapter$18;->val$info:Lcom/youku/vo/CardInfo;

    iget-object v5, v5, Lcom/youku/vo/CardInfo;->channelTitle:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    invoke-static {v2, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1009
    .end local v0    # "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "tracker":Ljava/lang/String;
    .end local v3    # "videoId":Ljava/lang/String;
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/tudou/adapter/IndexPageAdapter$18;->this$0:Lcom/tudou/adapter/IndexPageAdapter;

    invoke-static {v4}, Lcom/tudou/adapter/IndexPageAdapter;->access$000(Lcom/tudou/adapter/IndexPageAdapter;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/youku/vo/SkipInfo;->skip(Landroid/app/Activity;)V

    .line 1010
    return-void

    .line 993
    .restart local v3    # "videoId":Ljava/lang/String;
    :cond_1
    iget-object v3, v1, Lcom/youku/vo/SkipInfo;->video_id:Ljava/lang/String;

    goto :goto_0

    .line 1002
    .end local v3    # "videoId":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/tudou/adapter/IndexPageAdapter$18;->val$aIndexPageItem:Lcom/youku/vo/IndexPageItem;

    iget v4, v4, Lcom/youku/vo/IndexPageItem;->itemType:I

    const/16 v5, 0x11

    if-ne v4, v5, :cond_0

    .line 1003
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1004
    .restart local v0    # "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "page"

    const-string v5, "\u9996\u9875"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    const-string v4, "cmsname"

    iget-object v5, v1, Lcom/youku/vo/SkipInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    const-string v4, "t1.h5_html.click"

    invoke-static {v4, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_1
.end method
