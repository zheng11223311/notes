.class public Lcom/youku/vo/Initial$ToolbarsItem;
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
    name = "ToolbarsItem"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4L


# instance fields
.field public icon_for_phone:Ljava/lang/String;

.field public selected_icon_for_phone:Ljava/lang/String;

.field public skip_inf:Lcom/youku/vo/SkipInfo;

.field final synthetic this$0:Lcom/youku/vo/Initial;


# direct methods
.method public constructor <init>(Lcom/youku/vo/Initial;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/youku/vo/Initial$ToolbarsItem;->this$0:Lcom/youku/vo/Initial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
