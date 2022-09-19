.class public abstract Lcom/youku/widget/viewpager/PagerAdapter;
.super Ljava/lang/Object;
.source "PagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/widget/viewpager/PagerAdapter$DataSetObserver;
    }
.end annotation


# static fields
.field public static final POSITION_NONE:I = -0x2

.field public static final POSITION_UNCHANGED:I = -0x1


# instance fields
.field private mObserver:Lcom/youku/widget/viewpager/PagerAdapter$DataSetObserver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public abstract destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
.end method

.method public abstract finishUpdate(Landroid/view/ViewGroup;)V
.end method

.method public abstract getCount()I
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 125
    const/4 v0, -0x1

    return v0
.end method

.method public abstract instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end method

.method public abstract isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/youku/widget/viewpager/PagerAdapter;->mObserver:Lcom/youku/widget/viewpager/PagerAdapter$DataSetObserver;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/youku/widget/viewpager/PagerAdapter;->mObserver:Lcom/youku/widget/viewpager/PagerAdapter$DataSetObserver;

    invoke-interface {v0}, Lcom/youku/widget/viewpager/PagerAdapter$DataSetObserver;->onDataSetChanged()V

    .line 136
    :cond_0
    return-void
.end method

.method public abstract restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
.end method

.method public abstract saveState()Landroid/os/Parcelable;
.end method

.method setDataSetObserver(Lcom/youku/widget/viewpager/PagerAdapter$DataSetObserver;)V
    .locals 0
    .param p1, "observer"    # Lcom/youku/widget/viewpager/PagerAdapter$DataSetObserver;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/youku/widget/viewpager/PagerAdapter;->mObserver:Lcom/youku/widget/viewpager/PagerAdapter$DataSetObserver;

    .line 140
    return-void
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 92
    return-void
.end method

.method public abstract startUpdate(Landroid/view/ViewGroup;)V
.end method
