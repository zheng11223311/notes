.class public Lcom/tudou/detail/DetailModel$StartVideoRecordResult;
.super Ljava/lang/Object;
.source "DetailModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/detail/DetailModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StartVideoRecordResult"
.end annotation


# instance fields
.field public success:Z

.field public tCancelUrl:Ljava/lang/String;

.field public tStopUrl:Ljava/lang/String;

.field public tSubVideoId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1941
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1942
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/detail/DetailModel$StartVideoRecordResult;->success:Z

    .line 1943
    iput-object v1, p0, Lcom/tudou/detail/DetailModel$StartVideoRecordResult;->tSubVideoId:Ljava/lang/String;

    .line 1944
    iput-object v1, p0, Lcom/tudou/detail/DetailModel$StartVideoRecordResult;->tCancelUrl:Ljava/lang/String;

    .line 1945
    iput-object v1, p0, Lcom/tudou/detail/DetailModel$StartVideoRecordResult;->tStopUrl:Ljava/lang/String;

    return-void
.end method

.method public static createFromJson(Lorg/json/JSONObject;)Lcom/tudou/detail/DetailModel$StartVideoRecordResult;
    .locals 4
    .param p0, "tJsonObj"    # Lorg/json/JSONObject;

    .prologue
    .line 1948
    new-instance v1, Lcom/tudou/detail/DetailModel$StartVideoRecordResult;

    invoke-direct {v1}, Lcom/tudou/detail/DetailModel$StartVideoRecordResult;-><init>()V

    .line 1950
    .local v1, "ret":Lcom/tudou/detail/DetailModel$StartVideoRecordResult;
    :try_start_0
    const-string v2, "new_itemcode"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tudou/detail/DetailModel$StartVideoRecordResult;->tSubVideoId:Ljava/lang/String;

    .line 1951
    const-string v2, "cancel_url"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tudou/detail/DetailModel$StartVideoRecordResult;->tCancelUrl:Ljava/lang/String;

    .line 1952
    const-string v2, "stop_url"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tudou/detail/DetailModel$StartVideoRecordResult;->tStopUrl:Ljava/lang/String;

    .line 1953
    const-string v2, "code"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, v1, Lcom/tudou/detail/DetailModel$StartVideoRecordResult;->success:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1957
    :goto_1
    return-object v1

    .line 1953
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1954
    :catch_0
    move-exception v0

    .line 1955
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/tudou/ui/activity/DetailActivity;->TAG_EXCEPTION:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 1962
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StartVideoRecordResult{success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tudou/detail/DetailModel$StartVideoRecordResult;->success:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tSubVideoId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/detail/DetailModel$StartVideoRecordResult;->tSubVideoId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tCancelUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/detail/DetailModel$StartVideoRecordResult;->tCancelUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tStopUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/detail/DetailModel$StartVideoRecordResult;->tStopUrl:Ljava/lang/String;

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
