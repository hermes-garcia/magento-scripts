<?php

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

use Magento\Framework\App\Bootstrap;
use Psr\Log\LoggerInterface;
use Magento\Framework\ObjectManagerInterface;

require 'app/bootstrap.php';

$params = $_SERVER;
$bootstrap = Bootstrap::create(BP, $params);
$obj = $bootstrap->getObjectManager();
$state = $obj->get('Magento\Framework\App\State');
$configLoader = $obj->get(\Magento\Framework\ObjectManager\ConfigLoaderInterface::class);

// Define area to emulate
$state->setAreaCode('frontend');
//$state->setAreaCode('adminhtml');
$obj->configure($configLoader->load('frontend'));
//$obj->configure($configLoader->load('adminhtml'));

//Example load order by id
$orderId = "99";
$orderManagement = $obj->get('Magento\Sales\Model\Order');
/** @var \Magento\Sales\Model\Order $order */
$order = $orderManagement->load($orderId);

try {
    echo "Order id: " . $order->getId() . "\n";
    echo "End" . "\n";
} catch (\Exception $e) {
    echo $e;
}
