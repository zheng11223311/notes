.class final Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo$1;
.super Ljava/lang/Object;
.source "BeanUserInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 142
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;

    invoke-direct {v0}, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;-><init>()V

    .line 143
    .local v0, "pb":Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->access$002(Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->access$102(Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->access$202(Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->access$302(Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->access$402(Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->access$502(Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->access$602(Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->access$702(Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->access$802(Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->access$902(Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->access$1002(Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->access$1102(Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->access$1202(Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->access$1302(Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->access$1402(Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->access$1502(Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->access$1602(Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->access$1702(Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 161
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 165
    new-array v0, p1, [Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo$1;->newArray(I)[Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;

    move-result-object v0

    return-object v0
.end method
