.class public Lcom/youku/vo/GiftBean$Data$PresentItem;
.super Ljava/lang/Object;
.source "GiftBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/GiftBean$Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PresentItem"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/youku/vo/GiftBean$Data$PresentItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public index:Ljava/lang/String;

.field public num:Ljava/lang/String;

.field public picUrl:Ljava/lang/String;

.field public popularity:Ljava/lang/String;

.field public presentId:Ljava/lang/String;

.field public presentName:Ljava/lang/String;

.field public price:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 157
    new-instance v0, Lcom/youku/vo/GiftBean$Data$PresentItem$1;

    invoke-direct {v0}, Lcom/youku/vo/GiftBean$Data$PresentItem$1;-><init>()V

    sput-object v0, Lcom/youku/vo/GiftBean$Data$PresentItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/GiftBean$Data$PresentItem;->index:Ljava/lang/String;

    .line 107
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/GiftBean$Data$PresentItem;->popularity:Ljava/lang/String;

    .line 108
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/GiftBean$Data$PresentItem;->price:Ljava/lang/String;

    .line 109
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/GiftBean$Data$PresentItem;->presentId:Ljava/lang/String;

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/GiftBean$Data$PresentItem;->num:Ljava/lang/String;

    .line 111
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/GiftBean$Data$PresentItem;->picUrl:Ljava/lang/String;

    .line 112
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/GiftBean$Data$PresentItem;->presentName:Ljava/lang/String;

    .line 116
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/GiftBean$Data$PresentItem;->index:Ljava/lang/String;

    .line 107
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/GiftBean$Data$PresentItem;->popularity:Ljava/lang/String;

    .line 108
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/GiftBean$Data$PresentItem;->price:Ljava/lang/String;

    .line 109
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/GiftBean$Data$PresentItem;->presentId:Ljava/lang/String;

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/GiftBean$Data$PresentItem;->num:Ljava/lang/String;

    .line 111
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/GiftBean$Data$PresentItem;->picUrl:Ljava/lang/String;

    .line 112
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/GiftBean$Data$PresentItem;->presentName:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/vo/GiftBean$Data$PresentItem;->index:Ljava/lang/String;

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/vo/GiftBean$Data$PresentItem;->popularity:Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/vo/GiftBean$Data$PresentItem;->price:Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/vo/GiftBean$Data$PresentItem;->presentId:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/vo/GiftBean$Data$PresentItem;->num:Ljava/lang/String;

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/vo/GiftBean$Data$PresentItem;->picUrl:Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/vo/GiftBean$Data$PresentItem;->presentName:Ljava/lang/String;

    .line 155
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/youku/vo/GiftBean$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/youku/vo/GiftBean$1;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/youku/vo/GiftBean$Data$PresentItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PresentItem{index=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/vo/GiftBean$Data$PresentItem;->index:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", popularity=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/vo/GiftBean$Data$PresentItem;->popularity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", price=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/vo/GiftBean$Data$PresentItem;->price:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", presentId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/vo/GiftBean$Data$PresentItem;->presentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", num=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/vo/GiftBean$Data$PresentItem;->num:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", picUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/vo/GiftBean$Data$PresentItem;->picUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", presentName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/vo/GiftBean$Data$PresentItem;->presentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    .line 138
    iget-object v0, p0, Lcom/youku/vo/GiftBean$Data$PresentItem;->index:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/youku/vo/GiftBean$Data$PresentItem;->popularity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/youku/vo/GiftBean$Data$PresentItem;->price:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/youku/vo/GiftBean$Data$PresentItem;->presentId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/youku/vo/GiftBean$Data$PresentItem;->num:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/youku/vo/GiftBean$Data$PresentItem;->picUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/youku/vo/GiftBean$Data$PresentItem;->presentName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    return-void
.end method
