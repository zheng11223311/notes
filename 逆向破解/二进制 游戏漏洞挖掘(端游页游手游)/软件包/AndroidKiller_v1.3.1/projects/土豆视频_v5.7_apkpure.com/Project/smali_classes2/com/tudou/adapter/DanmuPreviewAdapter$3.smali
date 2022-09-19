.class Lcom/tudou/adapter/DanmuPreviewAdapter$3;
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
    .line 193
    iput-object p1, p0, Lcom/tudou/adapter/DanmuPreviewAdapter$3;->this$0:Lcom/tudou/adapter/DanmuPreviewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 197
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/youku/vo/DanmuListResult$DanmuResult;

    .line 198
    .local v7, "item":Lcom/youku/vo/DanmuListResult$DanmuResult;
    iget-object v0, p0, Lcom/tudou/adapter/DanmuPreviewAdapter$3;->this$0:Lcom/tudou/adapter/DanmuPreviewAdapter;

    invoke-static {v0}, Lcom/tudou/adapter/DanmuPreviewAdapter;->access$100(Lcom/tudou/adapter/DanmuPreviewAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, v7, Lcom/youku/vo/DanmuListResult$DanmuResult;->video_id:Ljava/lang/String;

    sget-object v2, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    iget-object v3, v7, Lcom/youku/vo/DanmuListResult$DanmuResult;->title:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, v7, Lcom/youku/vo/DanmuListResult$DanmuResult;->short_discription:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 200
    return-void
.end method
