.class Lcom/tudou/detail/widget/VideoActorsBar$ActorItemHolder;
.super Ljava/lang/Object;
.source "VideoActorsBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/detail/widget/VideoActorsBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActorItemHolder"
.end annotation


# instance fields
.field actor:Lcom/youku/vo/NewVideoDetail$Detail$Actor;

.field mIcon:Landroid/widget/ImageView;

.field mRoot:Landroid/view/View;

.field mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoActorsBar$ActorItemHolder;->mRoot:Landroid/view/View;

    .line 103
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoActorsBar$ActorItemHolder;->mRoot:Landroid/view/View;

    const v1, 0x7f0c02fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/detail/widget/VideoActorsBar$ActorItemHolder;->mIcon:Landroid/widget/ImageView;

    .line 104
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoActorsBar$ActorItemHolder;->mRoot:Landroid/view/View;

    const v1, 0x7f0c02fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/widget/VideoActorsBar$ActorItemHolder;->mTitle:Landroid/widget/TextView;

    .line 105
    return-void
.end method


# virtual methods
.method public setActor(Lcom/youku/vo/NewVideoDetail$Detail$Actor;)V
    .locals 1
    .param p1, "actor"    # Lcom/youku/vo/NewVideoDetail$Detail$Actor;

    .prologue
    .line 97
    .line 98
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoActorsBar$ActorItemHolder;->mRoot:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 99
    return-void
.end method
