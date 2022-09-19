.class public Lio/rong/voiplib/NativeObject;
.super Ljava/lang/Object;
.source "NativeObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/voiplib/NativeObject$AcceptVoIPCallback;,
        Lio/rong/voiplib/NativeObject$StartVoIPCallback;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const-string v0, "RongIMVoip"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 7
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-virtual {p0, p0}, Lio/rong/voiplib/NativeObject;->setJNIEnv(Lio/rong/voiplib/NativeObject;)V

    .line 11
    return-void
.end method


# virtual methods
.method protected native AcceptVoip(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILio/rong/voiplib/NativeObject$AcceptVoIPCallback;)V
.end method

.method protected native EndVoip(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/rong/voiplib/NativeObject$AcceptVoIPCallback;)V
.end method

.method protected native StartVoip(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILio/rong/voiplib/NativeObject$StartVoIPCallback;)V
.end method

.method protected native setJNIEnv(Lio/rong/voiplib/NativeObject;)V
.end method
