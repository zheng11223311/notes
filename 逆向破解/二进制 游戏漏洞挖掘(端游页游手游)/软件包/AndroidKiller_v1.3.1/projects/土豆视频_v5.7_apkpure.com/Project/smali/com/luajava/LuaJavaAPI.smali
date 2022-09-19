.class public final Lcom/luajava/LuaJavaAPI;
.super Ljava/lang/Object;
.source "LuaJavaAPI.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static checkField(ILjava/lang/Object;Ljava/lang/String;)I
    .locals 9
    .param p0, "luaState"    # I
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 365
    invoke-static {p0}, Lcom/luajava/LuaStateFactory;->getExistingState(I)Lcom/luajava/LuaState;

    move-result-object v1

    .line 367
    .local v1, "L":Lcom/luajava/LuaState;
    monitor-enter v1

    .line 369
    const/4 v4, 0x0

    .line 372
    .local v4, "field":Ljava/lang/reflect/Field;
    :try_start_0
    instance-of v8, p1, Ljava/lang/Class;

    if-eqz v8, :cond_0

    .line 374
    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    move-object v5, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    .local v5, "objClass":Ljava/lang/Class;
    :goto_0
    :try_start_1
    invoke-virtual {v5, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 390
    if-nez v4, :cond_1

    .line 392
    :try_start_2
    monitor-exit v1

    .line 412
    :goto_1
    return v7

    .line 378
    .end local v5    # "objClass":Ljava/lang/Class;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .restart local v5    # "objClass":Ljava/lang/Class;
    goto :goto_0

    .line 385
    :catch_0
    move-exception v2

    .line 387
    .local v2, "e":Ljava/lang/Exception;
    monitor-exit v1

    goto :goto_1

    .line 413
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "objClass":Ljava/lang/Class;
    :catchall_0
    move-exception v7

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 395
    .restart local v5    # "objClass":Ljava/lang/Class;
    :cond_1
    const/4 v6, 0x0

    .line 398
    .local v6, "ret":Ljava/lang/Object;
    :try_start_3
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    .line 405
    if-nez p1, :cond_2

    .line 407
    :try_start_4
    monitor-exit v1

    goto :goto_1

    .line 400
    :catch_1
    move-exception v3

    .line 402
    .local v3, "e1":Ljava/lang/Exception;
    monitor-exit v1

    goto :goto_1

    .line 410
    .end local v3    # "e1":Ljava/lang/Exception;
    :cond_2
    invoke-virtual {v1, v6}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    .line 412
    const/4 v7, 0x1

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public static checkMethod(ILjava/lang/Object;Ljava/lang/String;)I
    .locals 6
    .param p0, "luaState"    # I
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "methodName"    # Ljava/lang/String;

    .prologue
    .line 426
    invoke-static {p0}, Lcom/luajava/LuaStateFactory;->getExistingState(I)Lcom/luajava/LuaState;

    move-result-object v1

    .line 428
    .local v1, "L":Lcom/luajava/LuaState;
    monitor-enter v1

    .line 432
    :try_start_0
    instance-of v5, p1, Ljava/lang/Class;

    if-eqz v5, :cond_0

    .line 434
    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    move-object v2, v0

    .line 441
    .local v2, "clazz":Ljava/lang/Class;
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    .line 443
    .local v4, "methods":[Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v5, v4

    if-ge v3, v5, :cond_2

    .line 445
    aget-object v5, v4, v3

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 446
    const/4 v5, 0x1

    monitor-exit v1

    .line 449
    :goto_2
    return v5

    .line 438
    .end local v2    # "clazz":Ljava/lang/Class;
    .end local v3    # "i":I
    .end local v4    # "methods":[Ljava/lang/reflect/Method;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .restart local v2    # "clazz":Ljava/lang/Class;
    goto :goto_0

    .line 443
    .restart local v3    # "i":I
    .restart local v4    # "methods":[Ljava/lang/reflect/Method;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 449
    :cond_2
    const/4 v5, 0x0

    monitor-exit v1

    goto :goto_2

    .line 450
    .end local v2    # "clazz":Ljava/lang/Class;
    .end local v3    # "i":I
    .end local v4    # "methods":[Ljava/lang/reflect/Method;
    :catchall_0
    move-exception v5

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public static classIndex(ILjava/lang/Class;Ljava/lang/String;)I
    .locals 3
    .param p0, "luaState"    # I
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "searchName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    .prologue
    .line 166
    invoke-static {p0}, Lcom/luajava/LuaStateFactory;->getExistingState(I)Lcom/luajava/LuaState;

    move-result-object v2

    monitor-enter v2

    .line 170
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/luajava/LuaJavaAPI;->checkField(ILjava/lang/Object;Ljava/lang/String;)I

    move-result v0

    .line 172
    .local v0, "res":I
    if-eqz v0, :cond_0

    .line 174
    const/4 v1, 0x1

    monitor-exit v2

    .line 184
    :goto_0
    return v1

    .line 177
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/luajava/LuaJavaAPI;->checkMethod(ILjava/lang/Object;Ljava/lang/String;)I

    move-result v0

    .line 179
    if-eqz v0, :cond_1

    .line 181
    const/4 v1, 0x2

    monitor-exit v2

    goto :goto_0

    .line 185
    .end local v0    # "res":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 184
    .restart local v0    # "res":I
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private static compareTypes(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 6
    .param p0, "L"    # Lcom/luajava/LuaState;
    .param p1, "parameter"    # Ljava/lang/Class;
    .param p2, "idx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    .prologue
    .line 491
    const/4 v2, 0x1

    .line 492
    .local v2, "okType":Z
    const/4 v1, 0x0

    .line 494
    .local v1, "obj":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->isBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 496
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 498
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, v4, :cond_0

    .line 500
    const/4 v2, 0x0

    .line 507
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/Boolean;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->toBoolean(I)Z

    move-result v4

    invoke-direct {v1, v4}, Ljava/lang/Boolean;-><init>(Z)V

    .line 587
    :cond_1
    :goto_1
    if-nez v2, :cond_10

    .line 589
    new-instance v4, Lcom/luajava/LuaException;

    const-string v5, "Invalid Parameter."

    invoke-direct {v4, v5}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 503
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_2
    const-class v4, Ljava/lang/Boolean;

    invoke-virtual {p1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 505
    const/4 v2, 0x0

    goto :goto_0

    .line 509
    :cond_3
    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->type(I)I

    move-result v4

    sget-object v5, Lcom/luajava/LuaState;->LUA_TSTRING:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v4, v5, :cond_5

    .line 511
    const-class v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 513
    const/4 v2, 0x0

    goto :goto_1

    .line 517
    :cond_4
    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "obj":Ljava/lang/String;
    goto :goto_1

    .line 520
    .local v1, "obj":Ljava/lang/Object;
    :cond_5
    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->isFunction(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 522
    const-class v4, Lcom/luajava/LuaObject;

    invoke-virtual {p1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 524
    const/4 v2, 0x0

    goto :goto_1

    .line 528
    :cond_6
    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->getLuaObject(I)Lcom/luajava/LuaObject;

    move-result-object v1

    .local v1, "obj":Lcom/luajava/LuaObject;
    goto :goto_1

    .line 531
    .local v1, "obj":Ljava/lang/Object;
    :cond_7
    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->isTable(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 533
    const-class v4, Lcom/luajava/LuaObject;

    invoke-virtual {p1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 535
    const/4 v2, 0x0

    goto :goto_1

    .line 539
    :cond_8
    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->getLuaObject(I)Lcom/luajava/LuaObject;

    move-result-object v1

    .local v1, "obj":Lcom/luajava/LuaObject;
    goto :goto_1

    .line 542
    .local v1, "obj":Ljava/lang/Object;
    :cond_9
    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->type(I)I

    move-result v4

    sget-object v5, Lcom/luajava/LuaState;->LUA_TNUMBER:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v4, v5, :cond_a

    .line 544
    new-instance v0, Ljava/lang/Double;

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->toNumber(I)D

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/lang/Double;-><init>(D)V

    .line 546
    .local v0, "db":Ljava/lang/Double;
    invoke-static {v0, p1}, Lcom/luajava/LuaState;->convertLuaNumber(Ljava/lang/Double;Ljava/lang/Class;)Ljava/lang/Number;

    move-result-object v1

    .line 547
    .local v1, "obj":Ljava/lang/Number;
    if-nez v1, :cond_1

    .line 549
    const/4 v2, 0x0

    goto :goto_1

    .line 552
    .end local v0    # "db":Ljava/lang/Double;
    .local v1, "obj":Ljava/lang/Object;
    :cond_a
    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->isUserdata(I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 554
    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->isObject(I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 556
    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->getObjectFromUserdata(I)Ljava/lang/Object;

    move-result-object v3

    .line 557
    .local v3, "userObj":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 559
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 563
    :cond_b
    move-object v1, v3

    goto/16 :goto_1

    .line 568
    .end local v3    # "userObj":Ljava/lang/Object;
    :cond_c
    const-class v4, Lcom/luajava/LuaObject;

    invoke-virtual {p1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 570
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 574
    :cond_d
    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->getLuaObject(I)Lcom/luajava/LuaObject;

    move-result-object v1

    .local v1, "obj":Lcom/luajava/LuaObject;
    goto/16 :goto_1

    .line 578
    .local v1, "obj":Ljava/lang/Object;
    :cond_e
    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->isNil(I)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 580
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 584
    :cond_f
    new-instance v4, Lcom/luajava/LuaException;

    const-string v5, "Invalid Parameters."

    invoke-direct {v4, v5}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 592
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_10
    return-object v1
.end method

.method public static createProxyObject(ILjava/lang/String;)I
    .locals 6
    .param p0, "luaState"    # I
    .param p1, "implem"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    .prologue
    .line 464
    invoke-static {p0}, Lcom/luajava/LuaStateFactory;->getExistingState(I)Lcom/luajava/LuaState;

    move-result-object v0

    .line 466
    .local v0, "L":Lcom/luajava/LuaState;
    monitor-enter v0

    .line 470
    const/4 v4, 0x2

    :try_start_0
    invoke-virtual {v0, v4}, Lcom/luajava/LuaState;->isTable(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 471
    new-instance v4, Lcom/luajava/LuaException;

    const-string v5, "Parameter is not a table. Can\'t create proxy."

    invoke-direct {v4, v5}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    :catch_0
    move-exception v1

    .line 481
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v4, Lcom/luajava/LuaException;

    invoke-direct {v4, v1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/Exception;)V

    throw v4

    .line 485
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 474
    :cond_0
    const/4 v4, 0x2

    :try_start_2
    invoke-virtual {v0, v4}, Lcom/luajava/LuaState;->getLuaObject(I)Lcom/luajava/LuaObject;

    move-result-object v2

    .line 476
    .local v2, "luaObj":Lcom/luajava/LuaObject;
    invoke-virtual {v2, p1}, Lcom/luajava/LuaObject;->createProxy(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 477
    .local v3, "proxy":Ljava/lang/Object;
    invoke-virtual {v0, v3}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 484
    const/4 v4, 0x1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return v4
.end method

.method private static getObjInstance(Lcom/luajava/LuaState;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 12
    .param p0, "L"    # Lcom/luajava/LuaState;
    .param p1, "clazz"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    .prologue
    .line 290
    monitor-enter p0

    .line 292
    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaState;->getTop()I

    move-result v9

    .line 294
    .local v9, "top":I
    add-int/lit8 v10, v9, -0x1

    new-array v5, v10, [Ljava/lang/Object;

    .line 296
    .local v5, "objs":[Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 297
    .local v1, "constructors":[Ljava/lang/reflect/Constructor;
    const/4 v0, 0x0

    .line 300
    .local v0, "constructor":Ljava/lang/reflect/Constructor;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v10, v1

    if-ge v3, v10, :cond_3

    .line 302
    aget-object v10, v1, v3

    invoke-virtual {v10}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    .line 303
    .local v7, "parameters":[Ljava/lang/Class;
    array-length v10, v7

    add-int/lit8 v11, v9, -0x1

    if-eq v10, v11, :cond_1

    .line 300
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 306
    :cond_1
    const/4 v6, 0x1

    .line 308
    .local v6, "okConstruc":Z
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v10, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v4, v10, :cond_2

    .line 312
    :try_start_1
    aget-object v10, v7, v4

    add-int/lit8 v11, v4, 0x2

    invoke-static {p0, v10, v11}, Lcom/luajava/LuaJavaAPI;->compareTypes(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v5, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 308
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 314
    :catch_0
    move-exception v2

    .line 316
    .local v2, "e":Ljava/lang/Exception;
    const/4 v6, 0x0

    .line 321
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    if-eqz v6, :cond_0

    .line 323
    :try_start_2
    aget-object v0, v1, v3

    .line 330
    .end local v4    # "j":I
    .end local v6    # "okConstruc":Z
    .end local v7    # "parameters":[Ljava/lang/Class;
    :cond_3
    if-nez v0, :cond_4

    .line 332
    new-instance v10, Lcom/luajava/LuaException;

    const-string v11, "Invalid method call. No such method."

    invoke-direct {v10, v11}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 351
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v1    # "constructors":[Ljava/lang/reflect/Constructor;
    .end local v3    # "i":I
    .end local v5    # "objs":[Ljava/lang/Object;
    .end local v9    # "top":I
    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v10

    .line 338
    .restart local v0    # "constructor":Ljava/lang/reflect/Constructor;
    .restart local v1    # "constructors":[Ljava/lang/reflect/Constructor;
    .restart local v3    # "i":I
    .restart local v5    # "objs":[Ljava/lang/Object;
    .restart local v9    # "top":I
    :cond_4
    :try_start_3
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v8

    .line 345
    .local v8, "ret":Ljava/lang/Object;
    if-nez v8, :cond_5

    .line 347
    :try_start_4
    new-instance v10, Lcom/luajava/LuaException;

    const-string v11, "Couldn\'t instantiate java Object"

    invoke-direct {v10, v11}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 340
    .end local v8    # "ret":Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 342
    .restart local v2    # "e":Ljava/lang/Exception;
    new-instance v10, Lcom/luajava/LuaException;

    invoke-direct {v10, v2}, Lcom/luajava/LuaException;-><init>(Ljava/lang/Exception;)V

    throw v10

    .line 350
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v8    # "ret":Ljava/lang/Object;
    :cond_5
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object v8
.end method

.method public static javaLoadLib(ILjava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p0, "luaState"    # I
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 254
    invoke-static {p0}, Lcom/luajava/LuaStateFactory;->getExistingState(I)Lcom/luajava/LuaState;

    move-result-object v0

    .line 256
    .local v0, "L":Lcom/luajava/LuaState;
    monitor-enter v0

    .line 261
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 270
    .local v1, "clazz":Ljava/lang/Class;
    const/4 v6, 0x1

    :try_start_1
    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Lcom/luajava/LuaState;

    aput-object v8, v6, v7

    invoke-virtual {v1, p2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 271
    .local v3, "mt":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 273
    .local v4, "obj":Ljava/lang/Object;
    if-eqz v4, :cond_0

    instance-of v6, v4, Ljava/lang/Integer;

    if-eqz v6, :cond_0

    .line 275
    check-cast v4, Ljava/lang/Integer;

    .end local v4    # "obj":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    :try_start_2
    monitor-exit v0

    .line 278
    :goto_0
    return v5

    .line 263
    .end local v1    # "clazz":Ljava/lang/Class;
    .end local v3    # "mt":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 265
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    new-instance v5, Lcom/luajava/LuaException;

    invoke-direct {v5, v2}, Lcom/luajava/LuaException;-><init>(Ljava/lang/Exception;)V

    throw v5

    .line 284
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catchall_0
    move-exception v5

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 278
    .restart local v1    # "clazz":Ljava/lang/Class;
    .restart local v3    # "mt":Ljava/lang/reflect/Method;
    .restart local v4    # "obj":Ljava/lang/Object;
    :cond_0
    :try_start_3
    monitor-exit v0

    goto :goto_0

    .line 280
    .end local v3    # "mt":Ljava/lang/reflect/Method;
    .end local v4    # "obj":Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 282
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Lcom/luajava/LuaException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error on calling method. Library could not be loaded. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public static javaNew(ILjava/lang/Class;)I
    .locals 3
    .param p0, "luaState"    # I
    .param p1, "clazz"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    .prologue
    .line 230
    invoke-static {p0}, Lcom/luajava/LuaStateFactory;->getExistingState(I)Lcom/luajava/LuaState;

    move-result-object v0

    .line 232
    .local v0, "L":Lcom/luajava/LuaState;
    monitor-enter v0

    .line 234
    :try_start_0
    invoke-static {v0, p1}, Lcom/luajava/LuaJavaAPI;->getObjInstance(Lcom/luajava/LuaState;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 236
    .local v1, "ret":Ljava/lang/Object;
    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    .line 238
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 239
    .end local v1    # "ret":Ljava/lang/Object;
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static javaNewInstance(ILjava/lang/String;)I
    .locals 5
    .param p0, "luaState"    # I
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    .prologue
    .line 199
    invoke-static {p0}, Lcom/luajava/LuaStateFactory;->getExistingState(I)Lcom/luajava/LuaState;

    move-result-object v0

    .line 201
    .local v0, "L":Lcom/luajava/LuaState;
    monitor-enter v0

    .line 206
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 212
    .local v1, "clazz":Ljava/lang/Class;
    :try_start_1
    invoke-static {v0, v1}, Lcom/luajava/LuaJavaAPI;->getObjInstance(Lcom/luajava/LuaState;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 214
    .local v3, "ret":Ljava/lang/Object;
    invoke-virtual {v0, v3}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    .line 216
    const/4 v4, 0x1

    monitor-exit v0

    return v4

    .line 208
    .end local v1    # "clazz":Ljava/lang/Class;
    .end local v3    # "ret":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 210
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    new-instance v4, Lcom/luajava/LuaException;

    invoke-direct {v4, v2}, Lcom/luajava/LuaException;-><init>(Ljava/lang/Exception;)V

    throw v4

    .line 217
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catchall_0
    move-exception v4

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public static objectIndex(ILjava/lang/Object;Ljava/lang/String;)I
    .locals 15
    .param p0, "luaState"    # I
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-static {p0}, Lcom/luajava/LuaStateFactory;->getExistingState(I)Lcom/luajava/LuaState;

    move-result-object v1

    .line 57
    .local v1, "L":Lcom/luajava/LuaState;
    monitor-enter v1

    .line 59
    :try_start_0
    invoke-virtual {v1}, Lcom/luajava/LuaState;->getTop()I

    move-result v12

    .line 61
    .local v12, "top":I
    add-int/lit8 v13, v12, -0x1

    new-array v8, v13, [Ljava/lang/Object;

    .line 65
    .local v8, "objs":[Ljava/lang/Object;
    move-object/from16 v0, p1

    instance-of v13, v0, Ljava/lang/Class;

    if-eqz v13, :cond_1

    .line 67
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Class;

    move-object v2, v0

    .line 74
    .local v2, "clazz":Ljava/lang/Class;
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v7

    .line 75
    .local v7, "methods":[Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    .line 78
    .local v6, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v13, v7

    if-ge v4, v13, :cond_4

    .line 80
    aget-object v13, v7, v4

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 78
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 71
    .end local v2    # "clazz":Ljava/lang/Class;
    .end local v4    # "i":I
    .end local v6    # "method":Ljava/lang/reflect/Method;
    .end local v7    # "methods":[Ljava/lang/reflect/Method;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .restart local v2    # "clazz":Ljava/lang/Class;
    goto :goto_0

    .line 84
    .restart local v4    # "i":I
    .restart local v6    # "method":Ljava/lang/reflect/Method;
    .restart local v7    # "methods":[Ljava/lang/reflect/Method;
    :cond_2
    aget-object v13, v7, v4

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    .line 85
    .local v10, "parameters":[Ljava/lang/Class;
    array-length v13, v10

    add-int/lit8 v14, v12, -0x1

    if-ne v13, v14, :cond_0

    .line 88
    const/4 v9, 0x1

    .line 90
    .local v9, "okMethod":Z
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    array-length v13, v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v5, v13, :cond_3

    .line 94
    :try_start_1
    aget-object v13, v10, v5

    add-int/lit8 v14, v5, 0x2

    invoke-static {v1, v13, v14}, Lcom/luajava/LuaJavaAPI;->compareTypes(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v8, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 96
    :catch_0
    move-exception v3

    .line 98
    .local v3, "e":Ljava/lang/Exception;
    const/4 v9, 0x0

    .line 103
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    if-eqz v9, :cond_0

    .line 105
    :try_start_2
    aget-object v6, v7, v4

    .line 112
    .end local v5    # "j":I
    .end local v9    # "okMethod":Z
    .end local v10    # "parameters":[Ljava/lang/Class;
    :cond_4
    if-nez v6, :cond_5

    .line 114
    new-instance v13, Lcom/luajava/LuaException;

    const-string v14, "Invalid method call. No such method."

    invoke-direct {v13, v14}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 149
    .end local v2    # "clazz":Ljava/lang/Class;
    .end local v4    # "i":I
    .end local v6    # "method":Ljava/lang/reflect/Method;
    .end local v7    # "methods":[Ljava/lang/reflect/Method;
    .end local v8    # "objs":[Ljava/lang/Object;
    .end local v12    # "top":I
    :catchall_0
    move-exception v13

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v13

    .line 120
    .restart local v2    # "clazz":Ljava/lang/Class;
    .restart local v4    # "i":I
    .restart local v6    # "method":Ljava/lang/reflect/Method;
    .restart local v7    # "methods":[Ljava/lang/reflect/Method;
    .restart local v8    # "objs":[Ljava/lang/Object;
    .restart local v12    # "top":I
    :cond_5
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v13

    invoke-static {v13}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 122
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 125
    :cond_6
    move-object/from16 v0, p1

    instance-of v13, v0, Ljava/lang/Class;

    if-eqz v13, :cond_7

    .line 127
    const/4 v13, 0x0

    invoke-virtual {v6, v13, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v11

    .line 140
    .local v11, "ret":Ljava/lang/Object;
    :goto_3
    if-nez v11, :cond_8

    .line 142
    const/4 v13, 0x0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 148
    :goto_4
    return v13

    .line 131
    .end local v11    # "ret":Ljava/lang/Object;
    :cond_7
    :try_start_5
    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v11

    .restart local v11    # "ret":Ljava/lang/Object;
    goto :goto_3

    .line 134
    .end local v11    # "ret":Ljava/lang/Object;
    :catch_1
    move-exception v3

    .line 136
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_6
    new-instance v13, Lcom/luajava/LuaException;

    invoke-direct {v13, v3}, Lcom/luajava/LuaException;-><init>(Ljava/lang/Exception;)V

    throw v13

    .line 146
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v11    # "ret":Ljava/lang/Object;
    :cond_8
    invoke-virtual {v1, v11}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    .line 148
    const/4 v13, 0x1

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4
.end method
