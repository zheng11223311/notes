.class final Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder$1;
.super Ljava/lang/Object;
.source "SuperActivityToast.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 1693
    new-instance v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;

    invoke-direct {v0, p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1689
    invoke-virtual {p0, p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder$1;->createFromParcel(Landroid/os/Parcel;)Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1699
    new-array v0, p1, [Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1689
    invoke-virtual {p0, p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder$1;->newArray(I)[Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;

    move-result-object v0

    return-object v0
.end method
