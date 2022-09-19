.class final Lcom/tudou/guide/VerticalViewPager$SavedState$1;
.super Ljava/lang/Object;
.source "VerticalViewPager.java"

# interfaces
.implements Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/guide/VerticalViewPager$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/os/ParcelableCompatCreatorCallbacks",
        "<",
        "Lcom/tudou/guide/VerticalViewPager$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/tudou/guide/VerticalViewPager$SavedState;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1203
    new-instance v0, Lcom/tudou/guide/VerticalViewPager$SavedState;

    invoke-direct {v0, p1, p2}, Lcom/tudou/guide/VerticalViewPager$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1200
    invoke-virtual {p0, p1, p2}, Lcom/tudou/guide/VerticalViewPager$SavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/tudou/guide/VerticalViewPager$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/tudou/guide/VerticalViewPager$SavedState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1207
    new-array v0, p1, [Lcom/tudou/guide/VerticalViewPager$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 1200
    invoke-virtual {p0, p1}, Lcom/tudou/guide/VerticalViewPager$SavedState$1;->newArray(I)[Lcom/tudou/guide/VerticalViewPager$SavedState;

    move-result-object v0

    return-object v0
.end method
