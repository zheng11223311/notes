.class public interface abstract Lorg/openad/events/IXYDEventDispatcher;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/openad/interfaces/IDisposable;


# virtual methods
.method public abstract addEventListener(Ljava/lang/String;Lorg/openad/events/IXYDEventListener;)V
.end method

.method public abstract dispatchEvent(Lorg/openad/events/IXYDEvent;)V
.end method

.method public abstract hasEventListener(Ljava/lang/String;)Z
.end method

.method public abstract removeAllListeners()V
.end method

.method public abstract removeEventListener(Ljava/lang/String;Lorg/openad/events/IXYDEventListener;)V
.end method

.method public abstract removeEventListeners(Ljava/lang/String;)V
.end method
