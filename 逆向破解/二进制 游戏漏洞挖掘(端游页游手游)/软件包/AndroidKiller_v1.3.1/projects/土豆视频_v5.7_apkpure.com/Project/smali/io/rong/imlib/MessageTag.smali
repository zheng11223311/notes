.class public interface abstract annotation Lio/rong/imlib/MessageTag;
.super Ljava/lang/Object;
.source "MessageTag.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lio/rong/imlib/MessageTag;
        flag = 0x0
        messageHandler = Lio/rong/imlib/model/MessageContent$MessageHandler$DefaultMessageHandler;
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final ISCOUNTED:I = 0x2

.field public static final ISPERSISTED:I = 0x1

.field public static final NONE:I


# virtual methods
.method public abstract flag()I
.end method

.method public abstract messageHandler()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lio/rong/imlib/model/MessageContent$MessageHandler;",
            ">;"
        }
    .end annotation
.end method

.method public abstract value()Ljava/lang/String;
.end method
