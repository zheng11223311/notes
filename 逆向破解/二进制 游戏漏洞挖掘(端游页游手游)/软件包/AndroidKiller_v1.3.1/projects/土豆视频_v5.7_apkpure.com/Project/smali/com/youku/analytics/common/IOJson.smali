.class public interface abstract Lcom/youku/analytics/common/IOJson;
.super Ljava/lang/Object;
.source "IOJson.java"


# virtual methods
.method public abstract isValid()Z
.end method

.method public abstract read(Lorg/json/JSONObject;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setSession(Ljava/lang/String;J)V
.end method

.method public abstract write(Lorg/json/JSONObject;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
