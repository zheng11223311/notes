.class public Lcom/youku/vo/Initial$StartPage;
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
    name = "StartPage"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4L


# instance fields
.field public bg_image:Ljava/lang/String;

.field public display_method:Ljava/lang/String;

.field public fg_image:Ljava/lang/String;

.field public fg_image_pos:Ljava/lang/String;

.field public keep_time:Ljava/lang/String;

.field final synthetic this$0:Lcom/youku/vo/Initial;


# direct methods
.method public constructor <init>(Lcom/youku/vo/Initial;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/youku/vo/Initial$StartPage;->this$0:Lcom/youku/vo/Initial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
