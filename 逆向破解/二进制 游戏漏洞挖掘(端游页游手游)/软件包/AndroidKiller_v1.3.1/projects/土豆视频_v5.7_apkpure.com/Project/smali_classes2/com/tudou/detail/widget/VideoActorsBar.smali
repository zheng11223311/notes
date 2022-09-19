.class public Lcom/tudou/detail/widget/VideoActorsBar;
.super Landroid/widget/FrameLayout;
.source "VideoActorsBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/detail/widget/VideoActorsBar$ActorItemHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/NewVideoDetail$Detail$Actor;",
            ">;"
        }
    .end annotation
.end field

.field private mActorsLayout:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/tudou/detail/widget/VideoActorsBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/detail/widget/VideoActorsBar;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tudou/detail/widget/VideoActorsBar;->mActors:Ljava/util/ArrayList;

    .line 43
    return-void
.end method

.method private makeAndAddItem(Lcom/youku/vo/NewVideoDetail$Detail$Actor;)V
    .locals 8
    .param p1, "actor"    # Lcom/youku/vo/NewVideoDetail$Detail$Actor;

    .prologue
    const/4 v7, 0x0

    .line 62
    sget-object v4, Lcom/tudou/detail/widget/VideoActorsBar;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "makeAndAddItem type = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p1, Lcom/youku/vo/NewVideoDetail$Detail$Actor;->id:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "-"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p1, Lcom/youku/vo/NewVideoDetail$Detail$Actor;->name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/tudou/detail/widget/VideoActorsBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 64
    .local v1, "tInflater":Landroid/view/LayoutInflater;
    const v3, 0x7f03009c

    iget-object v4, p0, Lcom/tudou/detail/widget/VideoActorsBar;->mActorsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 66
    .local v2, "v":Landroid/view/View;
    new-instance v0, Lcom/tudou/detail/widget/VideoActorsBar$ActorItemHolder;

    invoke-direct {v0, v2}, Lcom/tudou/detail/widget/VideoActorsBar$ActorItemHolder;-><init>(Landroid/view/View;)V

    .line 67
    .local v0, "holder":Lcom/tudou/detail/widget/VideoActorsBar$ActorItemHolder;
    invoke-virtual {v0, p1}, Lcom/tudou/detail/widget/VideoActorsBar$ActorItemHolder;->setActor(Lcom/youku/vo/NewVideoDetail$Detail$Actor;)V

    .line 68
    iget-object v3, v0, Lcom/tudou/detail/widget/VideoActorsBar$ActorItemHolder;->mTitle:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/youku/vo/NewVideoDetail$Detail$Actor;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v3, v0, Lcom/tudou/detail/widget/VideoActorsBar$ActorItemHolder;->mIcon:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    iget-object v4, p1, Lcom/youku/vo/NewVideoDetail$Detail$Actor;->pic_url:Ljava/lang/String;

    iget-object v5, v0, Lcom/tudou/detail/widget/VideoActorsBar$ActorItemHolder;->mIcon:Landroid/widget/ImageView;

    invoke-static {}, Lcom/baseproject/image/ImageLoaderManager;->getRoundPicOpt()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 71
    new-instance v3, Lcom/tudou/detail/widget/VideoActorsBar$1;

    invoke-direct {v3, p0}, Lcom/tudou/detail/widget/VideoActorsBar$1;-><init>(Lcom/tudou/detail/widget/VideoActorsBar;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v3, p0, Lcom/tudou/detail/widget/VideoActorsBar;->mActorsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 88
    return-void

    .line 62
    .end local v0    # "holder":Lcom/tudou/detail/widget/VideoActorsBar$ActorItemHolder;
    .end local v1    # "tInflater":Landroid/view/LayoutInflater;
    .end local v2    # "v":Landroid/view/View;
    :cond_0
    const-string v3, "null"

    goto :goto_0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 48
    const v0, 0x7f0c02fd

    invoke-virtual {p0, v0}, Lcom/tudou/detail/widget/VideoActorsBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tudou/detail/widget/VideoActorsBar;->mActorsLayout:Landroid/widget/LinearLayout;

    .line 50
    return-void
.end method

.method public setActors(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/NewVideoDetail$Detail$Actor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "actors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/NewVideoDetail$Detail$Actor;>;"
    iget-object v2, p0, Lcom/tudou/detail/widget/VideoActorsBar;->mActorsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 54
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoActorsBar;->mActors:Ljava/util/ArrayList;

    .line 56
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/NewVideoDetail$Detail$Actor;

    .line 57
    .local v0, "a":Lcom/youku/vo/NewVideoDetail$Detail$Actor;
    invoke-direct {p0, v0}, Lcom/tudou/detail/widget/VideoActorsBar;->makeAndAddItem(Lcom/youku/vo/NewVideoDetail$Detail$Actor;)V

    goto :goto_0

    .line 59
    .end local v0    # "a":Lcom/youku/vo/NewVideoDetail$Detail$Actor;
    :cond_0
    return-void
.end method
