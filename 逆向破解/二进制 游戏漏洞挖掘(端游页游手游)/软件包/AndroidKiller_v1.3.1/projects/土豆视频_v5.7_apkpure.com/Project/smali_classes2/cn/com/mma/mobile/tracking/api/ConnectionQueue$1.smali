.class Lcn/com/mma/mobile/tracking/api/ConnectionQueue$1;
.super Ljava/lang/Object;
.source "Countly.java"

# interfaces
.implements Lcn/com/mma/mobile/tracking/api/ConnectionQueue$ErrorHanlder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->tick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/mma/mobile/tracking/api/ConnectionQueue;


# direct methods
.method constructor <init>(Lcn/com/mma/mobile/tracking/api/ConnectionQueue;)V
    .locals 0

    .prologue
    .line 808
    iput-object p1, p0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue$1;->this$0:Lcn/com/mma/mobile/tracking/api/ConnectionQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hanlderError(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Long;

    .prologue
    .line 812
    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue$1;->this$0:Lcn/com/mma/mobile/tracking/api/ConnectionQueue;

    invoke-static {v0}, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->access$100(Lcn/com/mma/mobile/tracking/api/ConnectionQueue;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 813
    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue$1;->this$0:Lcn/com/mma/mobile/tracking/api/ConnectionQueue;

    invoke-static {v0}, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->access$200(Lcn/com/mma/mobile/tracking/api/ConnectionQueue;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 814
    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue$1;->this$0:Lcn/com/mma/mobile/tracking/api/ConnectionQueue;

    invoke-static {v0}, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->access$100(Lcn/com/mma/mobile/tracking/api/ConnectionQueue;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 817
    :cond_0
    return-void
.end method
