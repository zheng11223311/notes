.class Lcom/youku/gamecenter/GameDetailsActivity$6;
.super Ljava/lang/Object;
.source "GameDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/GameDetailsActivity;->loadScreenShot(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/GameDetailsActivity;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/GameDetailsActivity;I)V
    .locals 0

    .prologue
    .line 1243
    iput-object p1, p0, Lcom/youku/gamecenter/GameDetailsActivity$6;->this$0:Lcom/youku/gamecenter/GameDetailsActivity;

    iput p2, p0, Lcom/youku/gamecenter/GameDetailsActivity$6;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1248
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1258
    :cond_0
    :goto_0
    return-void

    .line 1251
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1252
    .local v0, "status":Ljava/lang/String;
    sget-object v1, Lcom/youku/gamecenter/image/ImageLoaderHelper;->IMAGE_LOAD_COMPLETE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1253
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity$6;->this$0:Lcom/youku/gamecenter/GameDetailsActivity;

    iget-object v2, p0, Lcom/youku/gamecenter/GameDetailsActivity$6;->this$0:Lcom/youku/gamecenter/GameDetailsActivity;

    invoke-static {v2}, Lcom/youku/gamecenter/GameDetailsActivity;->access$800(Lcom/youku/gamecenter/GameDetailsActivity;)Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/gamecenter/data/GameInfo;->screenshot:Ljava/util/List;

    iget v3, p0, Lcom/youku/gamecenter/GameDetailsActivity$6;->val$position:I

    iget-object v4, p0, Lcom/youku/gamecenter/GameDetailsActivity$6;->this$0:Lcom/youku/gamecenter/GameDetailsActivity;

    invoke-static {v4}, Lcom/youku/gamecenter/GameDetailsActivity;->access$800(Lcom/youku/gamecenter/GameDetailsActivity;)Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v4

    iget v4, v4, Lcom/youku/gamecenter/data/GameInfo;->slide_pic_type:I

    invoke-static {v1, v2, v3, v4}, Lcom/youku/gamecenter/widgets/GameImageShowDialog;->showImageViews(Landroid/content/Context;Ljava/util/List;II)Lcom/youku/gamecenter/widgets/GameImageShowDialog;

    goto :goto_0
.end method
