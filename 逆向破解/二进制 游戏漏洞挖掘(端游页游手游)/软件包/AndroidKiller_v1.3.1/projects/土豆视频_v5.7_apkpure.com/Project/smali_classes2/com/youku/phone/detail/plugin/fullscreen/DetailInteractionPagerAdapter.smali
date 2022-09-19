.class public Lcom/youku/phone/detail/plugin/fullscreen/DetailInteractionPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "DetailInteractionPagerAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mOldViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTitles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/youku/phone/detail/plugin/fullscreen/DetailInteractionPagerAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/phone/detail/plugin/fullscreen/DetailInteractionPagerAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DetailInteractionPagerAdapter;->mOldViews:Ljava/util/ArrayList;

    .line 17
    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DetailInteractionPagerAdapter;->mViews:Ljava/util/ArrayList;

    .line 18
    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DetailInteractionPagerAdapter;->mTitles:Ljava/util/ArrayList;

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DetailInteractionPagerAdapter;->mOldViews:Ljava/util/ArrayList;

    .line 17
    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DetailInteractionPagerAdapter;->mViews:Ljava/util/ArrayList;

    .line 18
    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DetailInteractionPagerAdapter;->mTitles:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {p0, p2}, Lcom/youku/phone/detail/plugin/fullscreen/DetailInteractionPagerAdapter;->setViews(Ljava/util/ArrayList;)V

    .line 25
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 3
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 56
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/DetailInteractionPagerAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroyItem position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " object = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "container":Landroid/view/View;
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 58
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DetailInteractionPagerAdapter;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DetailInteractionPagerAdapter;->mTitles:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DetailInteractionPagerAdapter;->mTitles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 46
    :goto_0
    return-object v0

    :cond_0
    if-nez p1, :cond_1

    const-string v0, "\u89c6\u9891\u63a8\u8350"

    goto :goto_0

    :cond_1
    const-string v0, "\u5267\u96c6\u4ecb\u7ecd"

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 5
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v4, -0x1

    .line 62
    sget-object v1, Lcom/youku/phone/detail/plugin/fullscreen/DetailInteractionPagerAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "instantiateItem position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/DetailInteractionPagerAdapter;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 64
    .local v0, "b":Landroid/view/View;
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "container":Landroid/view/View;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 51
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTitles(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "titles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/DetailInteractionPagerAdapter;->mTitles:Ljava/util/ArrayList;

    .line 34
    return-void
.end method

.method public setViews(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DetailInteractionPagerAdapter;->mViews:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DetailInteractionPagerAdapter;->mOldViews:Ljava/util/ArrayList;

    .line 29
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/DetailInteractionPagerAdapter;->mViews:Ljava/util/ArrayList;

    .line 30
    return-void
.end method
