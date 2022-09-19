.class public Lcom/sea_monster/resource/Resource;
.super Ljava/lang/Object;
.source "Resource.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sea_monster/resource/Resource;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/sea_monster/resource/Resource$1;

    invoke-direct {v0}, Lcom/sea_monster/resource/Resource$1;-><init>()V

    sput-object v0, Lcom/sea_monster/resource/Resource;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/sea_monster/resource/Resource;->uri:Landroid/net/Uri;

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 21
    const-class v0, Landroid/net/Uri;

    invoke-static {p1, v0}, Lcom/sea_monster/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;Ljava/lang/Class;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/sea_monster/resource/Resource;-><init>(Landroid/net/Uri;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/sea_monster/resource/Resource;)V
    .locals 1
    .param p1, "resource"    # Lcom/sea_monster/resource/Resource;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Lcom/sea_monster/resource/Resource;->getUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sea_monster/resource/Resource;->uri:Landroid/net/Uri;

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "uriPath"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sea_monster/resource/Resource;-><init>(Landroid/net/Uri;)V

    .line 30
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Lcom/sea_monster/resource/Resource;)Z
    .locals 2
    .param p1, "o"    # Lcom/sea_monster/resource/Resource;

    .prologue
    .line 48
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sea_monster/resource/Resource;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sea_monster/resource/Resource;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 49
    :cond_0
    const/4 v0, 0x0

    .line 51
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/sea_monster/resource/Resource;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sea_monster/resource/Resource;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sea_monster/resource/Resource;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sea_monster/resource/Resource;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sea_monster/resource/Resource;->uri:Landroid/net/Uri;

    invoke-static {p1, v0}, Lcom/sea_monster/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 57
    return-void
.end method
