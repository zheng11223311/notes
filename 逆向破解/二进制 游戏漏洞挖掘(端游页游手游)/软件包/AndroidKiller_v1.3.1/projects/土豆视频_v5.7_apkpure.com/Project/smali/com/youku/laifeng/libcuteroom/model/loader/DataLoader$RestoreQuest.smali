.class public Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader$RestoreQuest;
.super Ljava/lang/Object;
.source "DataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RestoreQuest"
.end annotation


# instance fields
.field private Args:Ljava/lang/String;

.field private BigArgs:Ljava/lang/String;

.field private Cookie:Ljava/lang/String;

.field private Type:I

.field private Url:Ljava/lang/String;

.field private listener:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;

.field final synthetic this$0:Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;


# direct methods
.method public constructor <init>(Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;
    .param p2, "cb"    # Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "args"    # Ljava/lang/String;
    .param p5, "bigArgs"    # Ljava/lang/String;
    .param p6, "type"    # I
    .param p7, "cookie"    # Ljava/lang/String;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader$RestoreQuest;->this$0:Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader$RestoreQuest;->listener:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;

    .line 228
    iput-object p2, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader$RestoreQuest;->listener:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;

    .line 229
    iput-object p3, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader$RestoreQuest;->Url:Ljava/lang/String;

    .line 230
    iput-object p4, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader$RestoreQuest;->Args:Ljava/lang/String;

    .line 231
    iput p6, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader$RestoreQuest;->Type:I

    .line 232
    iput-object p7, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader$RestoreQuest;->Cookie:Ljava/lang/String;

    .line 233
    iput-object p5, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader$RestoreQuest;->BigArgs:Ljava/lang/String;

    .line 234
    return-void
.end method


# virtual methods
.method public getArgs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader$RestoreQuest;->Args:Ljava/lang/String;

    return-object v0
.end method

.method public getBigArgs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader$RestoreQuest;->BigArgs:Ljava/lang/String;

    return-object v0
.end method

.method public getCookie()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader$RestoreQuest;->Cookie:Ljava/lang/String;

    return-object v0
.end method

.method public getListener()Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader$RestoreQuest;->listener:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader$RestoreQuest;->Type:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader$RestoreQuest;->Url:Ljava/lang/String;

    return-object v0
.end method
