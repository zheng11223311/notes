.class public final Lio/rong/voiplib/RongIMVoIP;
.super Ljava/lang/Object;
.source "RongIMVoIP.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HYJ"

.field private static nativeObj:Lio/rong/voiplib/NativeObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lio/rong/voiplib/NativeObject;

    invoke-direct {v0}, Lio/rong/voiplib/NativeObject;-><init>()V

    sput-object v0, Lio/rong/voiplib/RongIMVoIP;->nativeObj:Lio/rong/voiplib/NativeObject;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static acceptVoIP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILio/rong/voiplib/NativeObject$AcceptVoIPCallback;)V
    .locals 9
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "serverIp"    # Ljava/lang/String;
    .param p4, "serverTransferPort"    # I
    .param p5, "localPort"    # I
    .param p6, "serverControlPort"    # I
    .param p7, "mAcceptVoipCallback"    # Lio/rong/voiplib/NativeObject$AcceptVoIPCallback;

    .prologue
    .line 37
    sget-object v0, Lio/rong/voiplib/RongIMVoIP;->nativeObj:Lio/rong/voiplib/NativeObject;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p2

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lio/rong/voiplib/NativeObject;->AcceptVoip(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILio/rong/voiplib/NativeObject$AcceptVoIPCallback;)V

    .line 38
    return-void
.end method

.method public static endVoIP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;

    .prologue
    .line 48
    sget-object v0, Lio/rong/voiplib/RongIMVoIP;->nativeObj:Lio/rong/voiplib/NativeObject;

    new-instance v1, Lio/rong/voiplib/RongIMVoIP$1;

    invoke-direct {v1}, Lio/rong/voiplib/RongIMVoIP$1;-><init>()V

    invoke-virtual {v0, p0, p1, p2, v1}, Lio/rong/voiplib/NativeObject;->EndVoip(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/rong/voiplib/NativeObject$AcceptVoIPCallback;)V

    .line 57
    return-void
.end method

.method public static startVoIP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILio/rong/voiplib/NativeObject$StartVoIPCallback;)V
    .locals 7
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "fromId"    # Ljava/lang/String;
    .param p3, "toId"    # Ljava/lang/String;
    .param p4, "localPort"    # I
    .param p5, "mStartVoipCallback"    # Lio/rong/voiplib/NativeObject$StartVoIPCallback;

    .prologue
    .line 24
    sget-object v0, Lio/rong/voiplib/RongIMVoIP;->nativeObj:Lio/rong/voiplib/NativeObject;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lio/rong/voiplib/NativeObject;->StartVoip(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILio/rong/voiplib/NativeObject$StartVoIPCallback;)V

    .line 25
    return-void
.end method
