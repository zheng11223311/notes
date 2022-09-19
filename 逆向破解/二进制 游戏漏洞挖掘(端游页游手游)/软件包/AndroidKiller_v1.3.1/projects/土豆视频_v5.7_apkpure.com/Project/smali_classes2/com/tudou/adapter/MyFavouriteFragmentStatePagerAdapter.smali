.class public Lcom/tudou/adapter/MyFavouriteFragmentStatePagerAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "MyFavouriteFragmentStatePagerAdapter.java"


# static fields
.field public static mf:Lcom/tudou/ui/fragment/MyFavoriteFragment;


# instance fields
.field private fpf:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

.field private fvf:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 22
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 23
    iput-object p1, p0, Lcom/tudou/adapter/MyFavouriteFragmentStatePagerAdapter;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tudou/ui/fragment/MyFavoriteFragment;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mf"    # Lcom/tudou/ui/fragment/MyFavoriteFragment;
    .param p3, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 27
    invoke-direct {p0, p3}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 28
    iput-object p1, p0, Lcom/tudou/adapter/MyFavouriteFragmentStatePagerAdapter;->mContext:Landroid/content/Context;

    .line 29
    sput-object p2, Lcom/tudou/adapter/MyFavouriteFragmentStatePagerAdapter;->mf:Lcom/tudou/ui/fragment/MyFavoriteFragment;

    .line 30
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 34
    if-nez p1, :cond_1

    .line 35
    iget-object v0, p0, Lcom/tudou/adapter/MyFavouriteFragmentStatePagerAdapter;->fvf:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    if-nez v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/tudou/adapter/MyFavouriteFragmentStatePagerAdapter;->mContext:Landroid/content/Context;

    const-class v1, Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    iput-object v0, p0, Lcom/tudou/adapter/MyFavouriteFragmentStatePagerAdapter;->fvf:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/tudou/adapter/MyFavouriteFragmentStatePagerAdapter;->fvf:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    .line 41
    :goto_0
    return-object v0

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/tudou/adapter/MyFavouriteFragmentStatePagerAdapter;->fpf:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    if-nez v0, :cond_2

    .line 40
    iget-object v0, p0, Lcom/tudou/adapter/MyFavouriteFragmentStatePagerAdapter;->mContext:Landroid/content/Context;

    const-class v1, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    iput-object v0, p0, Lcom/tudou/adapter/MyFavouriteFragmentStatePagerAdapter;->fpf:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    .line 41
    :cond_2
    iget-object v0, p0, Lcom/tudou/adapter/MyFavouriteFragmentStatePagerAdapter;->fpf:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    goto :goto_0
.end method
