.class Lcom/tudou/openudid/OpenUDID_service$1;
.super Landroid/os/Binder;
.source "OpenUDID_service.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/openudid/OpenUDID_service;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/openudid/OpenUDID_service;


# direct methods
.method constructor <init>(Lcom/tudou/openudid/OpenUDID_service;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/tudou/openudid/OpenUDID_service$1;->this$0:Lcom/tudou/openudid/OpenUDID_service;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I

    .prologue
    .line 22
    iget-object v1, p0, Lcom/tudou/openudid/OpenUDID_service$1;->this$0:Lcom/tudou/openudid/OpenUDID_service;

    const-string v2, "openudid_prefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/tudou/openudid/OpenUDID_service;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 23
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    const-string v2, "openudid"

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 25
    const/4 v1, 0x1

    return v1
.end method
