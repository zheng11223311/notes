.class public Lcom/youku/vo/Initial$PageModule;
.super Ljava/lang/Object;
.source "Initial.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/Initial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PageModule"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5L


# instance fields
.field public module_id:Ljava/lang/String;

.field public skip_inf:Lcom/youku/vo/SkipInfo;

.field public sub_type:Ljava/lang/String;

.field final synthetic this$0:Lcom/youku/vo/Initial;

.field public title:Ljava/lang/String;

.field public title_corner_image:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/youku/vo/Initial;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/youku/vo/Initial$PageModule;->this$0:Lcom/youku/vo/Initial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
