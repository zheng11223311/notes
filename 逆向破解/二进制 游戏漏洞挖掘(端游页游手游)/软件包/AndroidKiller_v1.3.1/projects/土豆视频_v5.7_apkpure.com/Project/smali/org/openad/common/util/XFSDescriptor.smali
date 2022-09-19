.class public Lorg/openad/common/util/XFSDescriptor;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/openad/common/util/XFSDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field public busySize:I

.field public freeSize:I

.field public totalSize:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/openad/common/util/XFSDescriptor;->freeSize:I

    iput p2, p0, Lorg/openad/common/util/XFSDescriptor;->totalSize:I

    iget v0, p0, Lorg/openad/common/util/XFSDescriptor;->totalSize:I

    iget v1, p0, Lorg/openad/common/util/XFSDescriptor;->freeSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/openad/common/util/XFSDescriptor;->busySize:I

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lorg/openad/common/util/XFSDescriptor;

    invoke-virtual {p0, p1}, Lorg/openad/common/util/XFSDescriptor;->compareTo(Lorg/openad/common/util/XFSDescriptor;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/openad/common/util/XFSDescriptor;)I
    .locals 2

    iget v0, p0, Lorg/openad/common/util/XFSDescriptor;->freeSize:I

    iget v1, p1, Lorg/openad/common/util/XFSDescriptor;->freeSize:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    iget v0, p0, Lorg/openad/common/util/XFSDescriptor;->freeSize:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExist()Z
    .locals 1

    iget v0, p0, Lorg/openad/common/util/XFSDescriptor;->freeSize:I

    if-ltz v0, :cond_0

    iget v0, p0, Lorg/openad/common/util/XFSDescriptor;->totalSize:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
