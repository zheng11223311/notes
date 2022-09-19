.class public Lio/rong/imlib/model/Discussion;
.super Ljava/lang/Object;
.source "Discussion.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/rong/imlib/model/Discussion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private creatorId:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private isOpen:Z

.field private memberIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 193
    new-instance v0, Lio/rong/imlib/model/Discussion$1;

    invoke-direct {v0}, Lio/rong/imlib/model/Discussion$1;-><init>()V

    sput-object v0, Lio/rong/imlib/model/Discussion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x1

    .line 42
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readIntFromParcel(Landroid/os/Parcel;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_0

    :goto_0
    const-class v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->readListFromParcel(Landroid/os/Parcel;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lio/rong/imlib/model/Discussion;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V

    .line 47
    return-void

    .line 42
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lio/rong/imlib/NativeObject$DiscussionInfo;)V
    .locals 4
    .param p1, "info"    # Lio/rong/imlib/NativeObject$DiscussionInfo;

    .prologue
    const/4 v0, 0x1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean v0, p0, Lio/rong/imlib/model/Discussion;->isOpen:Z

    .line 33
    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$DiscussionInfo;->getDiscussionId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/rong/imlib/model/Discussion;->id:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$DiscussionInfo;->getDiscussionName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/rong/imlib/model/Discussion;->name:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$DiscussionInfo;->getAdminId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/rong/imlib/model/Discussion;->creatorId:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$DiscussionInfo;->getUserIds()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/rong/imlib/model/Discussion;->memberIdList:Ljava/util/List;

    .line 37
    const-string v1, "Discussion"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "info.getInviteStatus():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$DiscussionInfo;->getInviteStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$DiscussionInfo;->getInviteStatus()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    iput-boolean v0, p0, Lio/rong/imlib/model/Discussion;->isOpen:Z

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/rong/imlib/model/Discussion;->isOpen:Z

    .line 56
    iput-object p1, p0, Lio/rong/imlib/model/Discussion;->id:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lio/rong/imlib/model/Discussion;->name:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "creatorId"    # Ljava/lang/String;
    .param p4, "isOpen"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p5, "memberIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/rong/imlib/model/Discussion;->isOpen:Z

    .line 71
    iput-object p1, p0, Lio/rong/imlib/model/Discussion;->id:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lio/rong/imlib/model/Discussion;->name:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Lio/rong/imlib/model/Discussion;->creatorId:Ljava/lang/String;

    .line 74
    iput-boolean p4, p0, Lio/rong/imlib/model/Discussion;->isOpen:Z

    .line 75
    iput-object p5, p0, Lio/rong/imlib/model/Discussion;->memberIdList:Ljava/util/List;

    .line 76
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public getCreatorId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lio/rong/imlib/model/Discussion;->creatorId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lio/rong/imlib/model/Discussion;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMemberIdList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lio/rong/imlib/model/Discussion;->memberIdList:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lio/rong/imlib/model/Discussion;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lio/rong/imlib/model/Discussion;->isOpen:Z

    return v0
.end method

.method public setCreatorId(Ljava/lang/String;)V
    .locals 0
    .param p1, "creatorId"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lio/rong/imlib/model/Discussion;->creatorId:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lio/rong/imlib/model/Discussion;->id:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setMemberIdList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, "memberIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lio/rong/imlib/model/Discussion;->memberIdList:Ljava/util/List;

    .line 166
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lio/rong/imlib/model/Discussion;->name:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setOpen(Z)V
    .locals 0
    .param p1, "isOpen"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lio/rong/imlib/model/Discussion;->isOpen:Z

    .line 94
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 186
    invoke-virtual {p0}, Lio/rong/imlib/model/Discussion;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lio/rong/imlib/model/Discussion;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Lio/rong/imlib/model/Discussion;->getCreatorId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lio/rong/imlib/model/Discussion;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Integer;)V

    .line 190
    invoke-virtual {p0}, Lio/rong/imlib/model/Discussion;->getMemberIdList()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/util/List;)V

    .line 191
    return-void

    .line 189
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
