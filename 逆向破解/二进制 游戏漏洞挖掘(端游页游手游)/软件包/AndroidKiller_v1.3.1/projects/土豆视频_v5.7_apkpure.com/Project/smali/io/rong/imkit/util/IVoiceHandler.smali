.class public interface abstract Lio/rong/imkit/util/IVoiceHandler;
.super Ljava/lang/Object;
.source "IVoiceHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;,
        Lio/rong/imkit/util/IVoiceHandler$OnPlayListener;,
        Lio/rong/imkit/util/IVoiceHandler$VoiceException;
    }
.end annotation


# virtual methods
.method public abstract getCurrentPlayUri()Landroid/net/Uri;
.end method

.method public abstract play(Landroid/content/Context;Landroid/net/Uri;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/rong/imkit/util/IVoiceHandler$VoiceException;
        }
    .end annotation
.end method

.method public abstract setPlayListener(Lio/rong/imkit/util/IVoiceHandler$OnPlayListener;)V
.end method

.method public abstract stop()V
.end method
