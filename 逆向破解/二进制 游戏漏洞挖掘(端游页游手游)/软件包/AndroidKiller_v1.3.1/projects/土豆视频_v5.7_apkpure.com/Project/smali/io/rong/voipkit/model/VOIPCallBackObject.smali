.class public Lio/rong/voipkit/model/VOIPCallBackObject;
.super Ljava/lang/Object;
.source "VOIPCallBackObject.java"


# instance fields
.field private isSuccess:Z

.field private object:Ljava/lang/Object;

.field private objectName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lio/rong/voipkit/model/VOIPCallBackObject;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public getObjectName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lio/rong/voipkit/model/VOIPCallBackObject;->objectName:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 14
    iget-boolean v0, p0, Lio/rong/voipkit/model/VOIPCallBackObject;->isSuccess:Z

    return v0
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 34
    iput-object p1, p0, Lio/rong/voipkit/model/VOIPCallBackObject;->object:Ljava/lang/Object;

    .line 35
    return-void
.end method

.method public setObjectName(Ljava/lang/String;)V
    .locals 0
    .param p1, "objectName"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lio/rong/voipkit/model/VOIPCallBackObject;->objectName:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0
    .param p1, "isSuccess"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lio/rong/voipkit/model/VOIPCallBackObject;->isSuccess:Z

    .line 19
    return-void
.end method
