.class Lcom/tudou/adapter/DanmuPreviewAdapter$4;
.super Ljava/lang/Object;
.source "DanmuPreviewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/adapter/DanmuPreviewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/DanmuPreviewAdapter;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/DanmuPreviewAdapter;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/tudou/adapter/DanmuPreviewAdapter$4;->this$0:Lcom/tudou/adapter/DanmuPreviewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 21
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 207
    const-string v3, "danmupreview_share"

    const-wide/16 v4, 0x320

    invoke-static {v3, v4, v5}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v3

    if-nez v3, :cond_0

    .line 221
    :goto_0
    return-void

    .line 210
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/youku/vo/DanmuListResult$DanmuResult;

    .line 211
    .local v20, "item":Lcom/youku/vo/DanmuListResult$DanmuResult;
    const/4 v14, 0x0

    .line 212
    .local v14, "isUGC":Z
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/youku/vo/DanmuListResult$DanmuResult;->type:Ljava/lang/String;

    const-string v4, "ugc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 213
    const/4 v14, 0x1

    .line 215
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 216
    .local v2, "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "vid"

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/youku/vo/DanmuListResult$DanmuResult;->video_id:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const-string v3, "t1.find_bullets.share"

    invoke-static {v3, v2}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 218
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/adapter/DanmuPreviewAdapter$4;->this$0:Lcom/tudou/adapter/DanmuPreviewAdapter;

    invoke-static {v3}, Lcom/tudou/adapter/DanmuPreviewAdapter;->access$100(Lcom/tudou/adapter/DanmuPreviewAdapter;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/youku/vo/DanmuListResult$DanmuResult;->title:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/youku/vo/DanmuListResult$DanmuResult;->play_url:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/youku/vo/DanmuListResult$DanmuResult;->video_id:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/youku/vo/DanmuListResult$DanmuResult;->image_448_252:Ljava/lang/String;

    const-string v8, ""

    const/4 v9, 0x6

    const/4 v10, 0x1

    const-string v11, ""

    move-object/from16 v0, v20

    iget-object v12, v0, Lcom/youku/vo/DanmuListResult$DanmuResult;->short_discription:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    invoke-static/range {v3 .. v19}, Lcom/tudou/android/TudouApi;->shareVideo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;J)Lcom/tudou/ui/activity/BindActivity;

    goto :goto_0
.end method
