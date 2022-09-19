.class public Lcom/ultrapower/mcs/engine/UmcsConfig;
.super Ljava/lang/Object;
.source "UmcsConfig.java"


# instance fields
.field private isMultiMode:Z

.field private traceFilter:I

.field private transportCallback:Lcom/ultrapower/mcs/engine/ITransportCallback;

.field private transportType:Lcom/ultrapower/mcs/engine/TransportType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTraceFilter()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/ultrapower/mcs/engine/UmcsConfig;->traceFilter:I

    return v0
.end method

.method public getTransportCallback()Lcom/ultrapower/mcs/engine/ITransportCallback;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/ultrapower/mcs/engine/UmcsConfig;->transportCallback:Lcom/ultrapower/mcs/engine/ITransportCallback;

    return-object v0
.end method

.method getTransportType()Lcom/ultrapower/mcs/engine/TransportType;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/ultrapower/mcs/engine/UmcsConfig;->transportType:Lcom/ultrapower/mcs/engine/TransportType;

    return-object v0
.end method

.method public isMultiMode()Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/ultrapower/mcs/engine/UmcsConfig;->isMultiMode:Z

    return v0
.end method

.method public setMultiMode(Z)V
    .locals 0
    .param p1, "isMultiMode"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/ultrapower/mcs/engine/UmcsConfig;->isMultiMode:Z

    .line 31
    return-void
.end method

.method public setTraceFilter(I)V
    .locals 0
    .param p1, "traceFilter"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/ultrapower/mcs/engine/UmcsConfig;->traceFilter:I

    .line 25
    return-void
.end method

.method public setTransportCallback(Lcom/ultrapower/mcs/engine/ITransportCallback;)V
    .locals 0
    .param p1, "transportCallback"    # Lcom/ultrapower/mcs/engine/ITransportCallback;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/ultrapower/mcs/engine/UmcsConfig;->transportCallback:Lcom/ultrapower/mcs/engine/ITransportCallback;

    .line 19
    return-void
.end method

.method public setTransportType(Lcom/ultrapower/mcs/engine/TransportType;)V
    .locals 0
    .param p1, "transportType"    # Lcom/ultrapower/mcs/engine/TransportType;

    .prologue
    .line 12
    iput-object p1, p0, Lcom/ultrapower/mcs/engine/UmcsConfig;->transportType:Lcom/ultrapower/mcs/engine/TransportType;

    .line 13
    return-void
.end method
