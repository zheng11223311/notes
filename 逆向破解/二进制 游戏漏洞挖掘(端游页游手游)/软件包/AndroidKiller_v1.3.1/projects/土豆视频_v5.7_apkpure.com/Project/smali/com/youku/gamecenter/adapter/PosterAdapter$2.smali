.class Lcom/youku/gamecenter/adapter/PosterAdapter$2;
.super Ljava/lang/Object;
.source "PosterAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/adapter/PosterAdapter;->setViewHolderDatas(Lcom/youku/gamecenter/data/GameInfo;Lcom/youku/gamecenter/adapter/PosterAdapter$Holder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/adapter/PosterAdapter;

.field final synthetic val$galleryButtonStatus:Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;

.field final synthetic val$slide:Lcom/youku/gamecenter/data/GameInfo;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/adapter/PosterAdapter;Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;Lcom/youku/gamecenter/data/GameInfo;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/youku/gamecenter/adapter/PosterAdapter$2;->this$0:Lcom/youku/gamecenter/adapter/PosterAdapter;

    iput-object p2, p0, Lcom/youku/gamecenter/adapter/PosterAdapter$2;->val$galleryButtonStatus:Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;

    iput-object p3, p0, Lcom/youku/gamecenter/adapter/PosterAdapter$2;->val$slide:Lcom/youku/gamecenter/data/GameInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 122
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/PosterAdapter$2;->val$galleryButtonStatus:Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;

    sget-object v1, Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;->ING:Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;

    if-ne v0, v1, :cond_0

    .line 126
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/PosterAdapter$2;->this$0:Lcom/youku/gamecenter/adapter/PosterAdapter;

    invoke-static {v0}, Lcom/youku/gamecenter/adapter/PosterAdapter;->access$000(Lcom/youku/gamecenter/adapter/PosterAdapter;)Lcom/youku/gamecenter/fragment/GameBaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/gamecenter/fragment/GameBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/gamecenter/adapter/PosterAdapter$2;->val$slide:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v2, p0, Lcom/youku/gamecenter/adapter/PosterAdapter$2;->this$0:Lcom/youku/gamecenter/adapter/PosterAdapter;

    invoke-static {v2}, Lcom/youku/gamecenter/adapter/PosterAdapter;->access$100(Lcom/youku/gamecenter/adapter/PosterAdapter;)Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/youku/gamecenter/util/ClickActionUtils;->handleGameAction(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;ILjava/lang/String;Z)V

    goto :goto_0
.end method
