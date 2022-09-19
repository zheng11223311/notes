.class Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDataManagerServiceListener.java"

# interfaces
.implements Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 100
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    const-string v0, "com.youku.laifeng.libcuteroom.model.port.service.IDataManagerServiceListener"

    return-object v0
.end method

.method public onDataReciveDirectListener(Ljava/lang/String;Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;)V
    .locals 5
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 113
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.youku.laifeng.libcuteroom.model.port.service.IDataManagerServiceListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    if-eqz p2, :cond_0

    .line 116
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 122
    :goto_0
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 127
    return-void

    .line 120
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 125
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onErrorReciveDirectListener(Ljava/lang/String;ILcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;)V
    .locals 5
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "errCode"    # I
    .param p3, "result"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 132
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.youku.laifeng.libcuteroom.model.port.service.IDataManagerServiceListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    if-eqz p3, :cond_0

    .line 136
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 142
    :goto_0
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 147
    return-void

    .line 140
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
