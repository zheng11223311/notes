.class public interface abstract Lcom/sea_monster/resource/IResourceHandler;
.super Ljava/lang/Object;
.source "IResourceHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract cleanup()V
.end method

.method public abstract exists(Lcom/sea_monster/resource/Resource;)Z
.end method

.method public abstract get(Lcom/sea_monster/resource/Resource;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sea_monster/resource/Resource;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract getFile(Lcom/sea_monster/resource/Resource;)Ljava/io/File;
.end method

.method public abstract getInputStream(Lcom/sea_monster/resource/Resource;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract remove(Lcom/sea_monster/resource/Resource;)V
.end method

.method public abstract store(Lcom/sea_monster/resource/Resource;Ljava/io/InputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract store(Lcom/sea_monster/resource/Resource;Ljava/io/InputStream;JLcom/sea_monster/network/StoreStatusCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
