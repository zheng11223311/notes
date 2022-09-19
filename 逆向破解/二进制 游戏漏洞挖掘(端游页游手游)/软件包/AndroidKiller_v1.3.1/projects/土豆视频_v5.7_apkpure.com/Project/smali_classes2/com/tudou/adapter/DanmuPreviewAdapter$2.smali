.class Lcom/tudou/adapter/DanmuPreviewAdapter$2;
.super Ljava/lang/Object;
.source "DanmuPreviewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/DanmuPreviewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/DanmuPreviewAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/tudou/adapter/DanmuPreviewAdapter;I)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/tudou/adapter/DanmuPreviewAdapter$2;->this$0:Lcom/tudou/adapter/DanmuPreviewAdapter;

    iput p2, p0, Lcom/tudou/adapter/DanmuPreviewAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/youku/vo/DanmuListResult$DanmuResult;

    .line 148
    .local v7, "item":Lcom/youku/vo/DanmuListResult$DanmuResult;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "t1.find_bullets.videoclick.1_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v7, Lcom/youku/vo/DanmuListResult$DanmuResult;->video_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tudou/adapter/DanmuPreviewAdapter$2;->val$position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 149
    iget-object v0, p0, Lcom/tudou/adapter/DanmuPreviewAdapter$2;->this$0:Lcom/tudou/adapter/DanmuPreviewAdapter;

    invoke-static {v0}, Lcom/tudou/adapter/DanmuPreviewAdapter;->access$100(Lcom/tudou/adapter/DanmuPreviewAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, v7, Lcom/youku/vo/DanmuListResult$DanmuResult;->video_id:Ljava/lang/String;

    sget-object v2, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    iget-object v3, v7, Lcom/youku/vo/DanmuListResult$DanmuResult;->title:Ljava/lang/String;

    iget-object v5, v7, Lcom/youku/vo/DanmuListResult$DanmuResult;->short_discription:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 151
    return-void
.end method
